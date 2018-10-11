
# OSS Compliance Toolkit


## Introduction

Many open-source software projects do not have time, or do not know that they should, check some of their compliance to OSS guidelines and requirements. The requirements selected in this prototype fall into the following categories.

### Software discovery good practices 

Users of the software, either end-users or potential collaborators, need to have an easy access to some basic information about the project, like:

* Name and description
* The licence(s) used
* How to interact with the project

Practically this is achieved through the following means respectively:

* Provide a README file at the root of the directory with basic information about the project: name, description, resources..
* Provide a LICENSE file at the root of the directory with the full text of the adopted licence.
* Provide a CODE_OF_CONDUCT and/or CONTRIBUTING file(s) at the root of the directory to understand how the team works on this project.


### Eclipse-specific good practices

In the specific case of Eclipse projects, these guidelines are documented in the [Eclipse Projects Handbook](https://www.eclipse.org/projects/handbook/) and define a set of files that should be found at the root of the repository:

* NOTICE 
* LICENCE
* CONTRIBUTING

The Eclipse forge also provides meta-data about projects, in the form of the [Project Management Infrastructure (PMI)](https://wiki.eclipse.org/Project_Management_Infrastructure). Information filled in by projects and available to users notably includes the following items:

* Name and description of the project
* SCM repository 
* Mailing lists and Forums (dev and users)
* Issue tracking 
* Releases and milestones information

Examples of checks that can be run on the PMI attributes can be found in the [Alambic Eclipse PMI plugin](https://alambic.io/Plugins/Pre/EclipsePmi.html).


### Third-party dependencies licencing

One crucial step is to check the licencing of the dependencies and look for incompatibilities. This information is usually not easily accessible or visible and thus is frequently overlooked. 


### Third-party dependencies health

Even if the dependencies, at the time of development, are considered active and well maintained, this can evolve over the life of the project and some of them might become outdated, with bugs and security flaws possibly not addressed. As a result the stability and security of the main project is threatened. Once again, this analysis is time- and resource- consuming and the information is not always easy to find. 


## Tools used for assessment

This assessment toolkit mostly relies on existing products for its checks. Besides the simple software discovery checks described above, the following tools are used for the assessment:


### ScanCode:

ScanCode scans code and detects licenses, copyrights, package manifests & dependencies (and more) to discover and inventory open source and third-party packages used in code.

* GitHub: [Scancode GitHub repository](https://github.com/nexB/scancode-toolkit)
* Documentation: [GitHub wiki](https://github.com/nexB/scancode-toolkit/wiki)

Current configuration scans files for: info, licenses, copyrights, packages, emails. 


### OSS Review Toolkit:

The goal of the OSS Review Toolkit (ORT) is to verify Free and Open Source Software licence compliance by checking
project source code and dependencies.

At a high level, it works by analyzing the source code for dependencies, downloading the
source code of the dependencies, scanning all source code for license information, and summarizing the results.

* GitHub: [OSS review toolkit](https://github.com/heremaps/oss-review-toolkit)


### OWASP Dependency checker

OWASP dependency-check-cli is an command line tool that uses dependency-check-core to detect publicly disclosed vulnerabilities associated with the scanned project dependencies. The tool will generate a report listing the dependency, any identified Common Platform Enumeration (CPE) identifiers, and the associated Common Vulnerability and Exposure (CVE) entries.

* Web site: 

Some help to read the report is provided on [the official web site](https://jeremylong.github.io/DependencyCheck/general/thereport.html). 


## More links

* Linux Foundation's list of tools for open compliance: \
  [Tools for Open Compliance | Open Compliance Program](https://compliance.linuxfoundation.org/references/tools)
* Fossology:\
  [Home - FOSSology](https://www.fossology.org/) 
* SPDX Tools:\
  [Tools | Software Package Data Exchange (SPDX)](https://www.spdx.org/tools) 
* Code Janitor (detect wrong comments/text in code).\
  [git.linuxfoundation.org Git - janitor.git/summary](http://git.linuxfoundation.org/janitor.git)
* ClearlyDefined Oss review kit\
  [GitHub - clearlydefined/oss-review-toolkit: A suite of...](https://github.com/clearlydefined/oss-review-toolkit) 
* About Code: \
  [Open Source Software Provenance Compliance | AboutCode](https://www.aboutcode.org/)\
  And more specifically: AboutCode Toolkit 
