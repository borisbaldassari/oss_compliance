
# OSS Compliance: requirements & tools

## Requirements

The main features required for our needs are:

* **Core License and IP checking** for the project's content: source files, documentation, etc. included in the project repository.\
  Priority: 1
* **Dependency License and IP checking**: Is it safe to reuse these dependencies as they are, and are all the licences compatible?\
  Priority: 1
* **Bill of Materials**: Get a comprehensive list of all components integrated in the product, including pre-requisits and dependencies. Generation should be automatic.\
  Priority: 2
* **Good practices and recommendations**: e.g. README, LICENSE files, code of conduct, guetting started, etc.\
  Priority: 2
* **Enables custom analysis in order to provide tailored insights** for specific contexts: domain-specific constraints, in-house policies and processes, specific questions/concerns from the stakeholders.\
  Priority: 2
* **Core Vulnerabilities checking**: Identify CVEs in the project's repository source files.\
  Priority: 3
* **Dependency Vulnerabilities checking**: Identify CVEs in the dependencies of the project.\
  Priority: 3

Additionally we need a solution that:

* **Builds up on top of existing tools**. We do not want to re-invent the wheel, as there are many very good open-source tools that exist out there for our purpose.
* Includes exclusively **free and open-source tools** and products, since it is what we fight for.
* **Acts as a PMI** (Project Metadata Infrastructure): all information regarding the project's presentation, usage and collaboration is to be stored in a single repository, including: SCM, ITS and CI URLs, link to the documentation, licences used, contact, etc.
* **Provides basic analytics** and **enables communication** on the project, by providing numbers and figures that can be trusted and reusable plots and visualisations.
