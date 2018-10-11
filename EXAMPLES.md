
# Example run 

## Command

```
sh run_oss_compliance.sh gh_crossminer_crossflow
```

## Log file

```
Executing OSS Compliance checks at 2018-10-11 18:10:24
Analysing code located at /home/boris/Projects/gh_crossminer_crossflow
# Testing for basic information files..
  * README file exists
  * LICENSE file exists
[WARNING] CODE_OF_CONDUCT file is missing.

# Testing for Eclipse-specific files..
[ERROR] NOTICE file is missing.
[ERROR] CONTRIBUTING file is missing.
  * LICENSE file exists
# Executing scancode from /home/boris/Applis/scancode-toolkit-2.9.2.
  * Writing output to scancode_gh_crossminer_crossflow.json and scancode_gh_crossminer_crossflow.html

Executing OSS Compliance checks at 2018-10-11 18:10:55
Analysing code located at /home/boris/Projects/gh_crossminer_crossflow
# Testing for basic information files..
  * README file exists
  * LICENSE file exists
[WARNING] CODE_OF_CONDUCT file is missing.

# Testing for Eclipse-specific files..
[ERROR] NOTICE file is missing.
[ERROR] CONTRIBUTING file is missing.
  * LICENSE file exists
# Executing scancode from /home/boris/Applis/scancode-toolkit-2.9.2.
  * Writing output to scancode_gh_crossminer_crossflow.json and scancode_gh_crossminer_crossflow.html

  * Finished processing at 
# Executing OSS Review Toolkit from /home/boris/Repositories/gh_oss-review-toolkit.
  * Writing output to ort_gh_crossminer_crossflow
  * Finished processing at 
# Executing Dependency checker from /home/boris/Applis/dependency-check.
  * Writing output to directory dc_gh_crossminer_crossflow
  * Finished processing at 
Found 1 vulnerabilities in dependencies.

DONE. Finished at 2018-10-11 18:10:40.
```

## Results

```
boris@kadath:gh_oss_compliance$ tree -L 2 results/
results/
└── gh_crossminer_crossflow
    ├── dc_gh_crossminer_crossflow
    ├── ort_gh_crossminer_crossflow
    ├── scancode_gh_crossminer_crossflow_files
    ├── scancode_gh_crossminer_crossflow.html
    └── scancode_gh_crossminer_crossflow.json

```
