#! bash

FILEIN=$1

ECLIPSE_ENABLED=1

# If env variables exist for these paths, use them.
# Otherwise use defaults.
SC_HOME=${SC_HOME:-~/Applis/scancode-toolkit-2.9.2}
ORT_HOME=${ORT_HOME:-~/Repositories/gh_oss-review-toolkit}
DC_HOME=${DC_HOME:-~/Applis/dependency-check}

PROJ_HOME=~/Projects/$FILEIN

# Checking that we have all the required binaries.
SC_VERSION=`${SC_HOME}/scancode --version`
if [ $? -ne 0 ]; then
    echo "Cannot find scancode: ${SC_HOME}/scancode. Quitting."
    exit 4
fi
ORT_VERSION=`${ORT_HOME}/gradlew --version`
if [ $? -ne 0 ]; then
    echo "Cannot find ORT: ${ORT_HOME}/gradlew. Quitting."
    exit 4
fi
DC_VERSION=`${DC_HOME}/bin/dependency-check.sh --version`
if [ $? -ne 0 ]; then
    echo "Cannot find dependency-check.sh: ${SC_HOME}/bin/dependency-check.sh. Quitting."
    exit 4
fi

LOG="run_oss_compliance_$FILEIN.txt"
DIROUT="results/$FILEIN"

if test ! -d $DIROUT; then
	mkdir -p $DIROUT
fi 

ls results

START_TIME=`date +"%F %H:%m:%S"`

echo "" | tee -a $LOG
echo "Executing OSS Compliance checks at ${START_TIME}" | tee -a $LOG
echo "Log file is $LOG."
echo "Results stored in "
echo "Analysing code located at ${PROJ_HOME}" | tee -a $LOG
echo ""

echo "# Testing for basic information files.." | tee -a $LOG

# Testing for README file
if ls "${PROJ_HOME}"/[rR][eE][aA][dD][mM][eE]* 1>/dev/null 2>&1; then
    echo "  * README file exists" | tee -a $LOG
else
    echo "[ERROR] README file is missing." | tee -a $LOG
fi

# Testing for LICENSE file
if ls "${PROJ_HOME}"/[lL][iI][cC][eE][nN][cCsS][eE]* 1>/dev/null 2>&1; then
    echo "  * LICENSE file exists" | tee -a $LOG
else
    echo "[ERROR] LICENSE file is missing." | tee -a $LOG
fi

# Testing for CODE_OF_CONDUCT file
if ls "${PROJ_HOME}"/[cC][oO][dD][eE]*[cC][oO][nN][dD][uU][cC][tT]* 1>/dev/null 2>&1; then
    echo "  * CODE_OF_CONDUCT file exists" | tee -a $LOG
else
    echo "[WARNING] CODE_OF_CONDUCT file is missing." | tee -a $LOG
fi

if test ${ECLIPSE_ENABLED} -eq 1; then 

    echo "" | tee -a $LOG

	echo "# Testing for Eclipse-specific files.." | tee -a $LOG

	# Testing for NOTICE file
	if ls "${PROJ_HOME}"/NOTICE* 1>/dev/null 2>&1; then
		echo "  * NOTICE file exists" | tee -a $LOG
	else
		echo "[ERROR] NOTICE file is missing." | tee -a $LOG
	fi

	# Testing for CONTRIBUTING file
	if ls "${PROJ_HOME}"/CONTRIBUTING* 1>/dev/null 2>&1; then
		echo "  * CONTRIBUTING file exists" | tee -a $LOG
	else
		echo "[ERROR] CONTRIBUTING file is missing." | tee -a $LOG
	fi

	# Testing for LICENSE file
	if ls "${PROJ_HOME}"/LICENSE* 1>/dev/null 2>&1; then
		echo "  * LICENSE file exists" | tee -a $LOG
	else
		echo "[ERROR] LICENSE file is missing." | tee -a $LOG
	fi

fi

echo ""

echo "# Executing scancode from $SC_HOME." | tee -a $LOG
echo "  * Writing output to scancode_$FILEIN.json and scancode_$FILEIN.html" | tee -a $LOG
time ${SC_HOME}/scancode --license --package --copyright --info --email --license-diag \
  -n4 --json-pp $DIROUT/scancode_$FILEIN.json --html-app $DIROUT/scancode_$FILEIN.html \
  --copyrights-summary ${PROJ_HOME}
LTIME=`localtime`
echo "  * Finished processing at $LTIME" | tee -a $LOG

echo ""

echo "# Executing OSS Review Toolkit from $ORT_HOME." | tee -a $LOG
echo "  * Writing output to ort_$FILEIN" | tee -a $LOG
time ${ORT_HOME}/analyzer/build/install/analyzer/bin/analyzer -i ${PROJ_HOME} \
 -o $DIROUT/ort_$FILEIN/ -f JSON -m Maven
LTIME=`localtime`
echo "  * Finished processing at $LTIME" | tee -a $LOG

echo ""

echo "# Executing Dependency checker from $DC_HOME." | tee -a $LOG
echo "  * Writing output to directory dc_$FILEIN" | tee -a $LOG
time ${DC_HOME}/bin/dependency-check.sh --project "$FILEIN" --scan ${PROJ_HOME} \
 --format CSV --out $DIROUT/dc_$FILEIN
LTIME=`localtime`
echo "  * Finished processing at $LTIME" | tee -a $LOG

DC_VUL=`echo $DIROUT/$dc_$FILEIN/dependency-check-report.csv | wc -l`
let "${DC_VUL}=${DC_VUL}-1"
echo "Found ${DC_VUL} vulnerabilities in dependencies." | tee -a $LOG


END_TIME=`date +"%F %H:%m:%S"`

echo "" | tee -a $LOG
echo "DONE. Finished at ${END_TIME}." | tee -a $LOG
echo "" | tee -a $LOG


