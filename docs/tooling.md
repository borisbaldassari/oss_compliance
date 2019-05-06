
# Tooling


This assessment toolkit mostly relies on existing products for its checks. Besides the simple software discovery checks described above, the following tools are used for the assessment:


## Miscellaneous

The following tools could be used to achieve our goals. This list presents overlaps and duplicates, so we will need to select the right tools.

* **About Code**: \
  [Open Source Software Provenance Compliance | AboutCode](https://www.aboutcode.org/)\
  And more specifically: AboutCode Toolkit
* **ScanCode**: \
  [GitHub - nexB/scancode-toolkit: ScanCode scans code and...](https://github.com/nexB/scancode-toolkit).
* **Fossology**:\
  [Home - FOSSology](https://www.fossology.org/)
* **SW360** -- BoM and Licence checking\
  [Eclipse SW360 | projects.eclipse.org](https://projects.eclipse.org/projects/technology.sw360/governance) \
  [GitHub - eclipse/sw360: SW360 project](https://github.com/eclipse/sw360) \
  Docker images: [Docker Hub](https://hub.docker.com/r/fossology/fossology/)
* **SPDX Tools**:\
  [Tools | Software Package Data Exchange (SPDX)](https://www.spdx.org/tools)
* **Code Janitor** (detect wrong comments/text in code).\
  [git.linuxfoundation.org Git - janitor.git/summary](http://git.linuxfoundation.org/janitor.git)
* **ClearlyDefined** Oss review kit\
  [GitHub - clearlydefined/oss-review-toolkit: A suite of...](https://github.com/clearlydefined/oss-review-toolkit)
* **Libraries.io** -- Monitoring dependencies.\
  [Libraries.io - The Open Source Discovery Service](https://libraries.io) \
  [API Documentation - Libraries.io](https://libraries.io/api)
* **Linux Foundation's list of tools for open compliance**: \
    [Tools for Open Compliance | Open Compliance Program](https://compliance.linuxfoundation.org/references/tools)

## Alambic Framework

We need a simple framework to execute the selected tools on the development project in a reliable and consistent manner. It should be easily extensible, provide a usable and efficient UI for users, should be well documented, and of course be open-source.

**Alambic** is an open-source platform and service for the management and visualisation of software engineering data. It is notably used to provide basic analytics on the software development process, or as a PMI in InnerSourcing programs.

* **Alambic main page**: [The Alambic project - Alambic](https://alambic.io/)
* **Alambic instance for the Eclipse forge**: [Alambic 4 Eclipse](https://eclipse.alambic.io)



## ScanCode:

ScanCode scans code and detects licenses, copyrights, package manifests & dependencies (and more) to discover and inventory open source and third-party packages used in code.

* GitHub: https://github.com/nexB/scancode-toolkit
* Documentation: https://github.com/nexB/scancode-toolkit/wiki

Current configuration scans files for: info, licenses, copyrights, packages, emails.


## OSS Review Toolkit:

The goal of the OSS Review Toolkit (ORT) is to verify Free and Open Source Software licence compliance by checking
project source code and dependencies.

At a high level, it works by analyzing the source code for dependencies, downloading the
source code of the dependencies, scanning all source code for license information, and summarizing the results.

* GitHub: https://github.com/heremaps/oss-review-toolkit


## OWASP Dependency checker

OWASP dependency-check-cli is an command line tool that uses dependency-check-core to detect publicly disclosed vulnerabilities associated with the scanned project dependencies. The tool will generate a report listing the dependency, any identified Common Platform Enumeration (CPE) identifiers, and the associated Common Vulnerability and Exposure (CVE) entries.

* GitHub repository: https://github.com/jeremylong/DependencyCheck
* Dcumentation: https://www.owasp.org/index.php/OWASP_Dependency_Check

Some help to read the report is provided on [the official web site](https://jeremylong.github.io/DependencyCheck/general/thereport.html).
