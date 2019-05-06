
# OSS Compliance for Eclipse


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

