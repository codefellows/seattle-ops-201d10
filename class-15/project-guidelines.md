# Ops 201 Final Project Requirements

## Scenario

Your team is a "Managed Service Provider" (MSP) and has been selected as one of the top companies to be contracted as a company's sole IT support, but you still need to win over the client as to why you're the best choice of MSP to work with. The role of client company will be played by your instructor, who will provide you with a fictional scenario consisting of a business, a business objective, required OS, and required software applications.

Your prospective customer is a very small organization (think 5-20 tech-using employees). Until now they have gotten by on off-the-shelf consumer hardware and software solutions, and have no IT policy. Individuals have generally used personal computers, storage, email accounts, etc. The company has purchased some hardware when needed, but these devices are not inventoried or managed by the company.

Now the organization is expanding

If the organization has a payment processing or point-of-sale system, that is already in working order and not part of this project.

Things to consider:
- Does the customer handle sensitive information
  - Is this customer PII?
  - Is this proprietary data, either collected data or intellectual property?
  - Etc.

Your job is to prepare a technical demonstration of how you will meet the given requirements to help the client achieve its business objective.


## Guideline Requirements

Regardless of the specific needs of your customer, your proposal should include the following aspects and solutions:


### User provisioning:
  - Setup a single endpoint as you would for a new user:
    - This should include connecting the new user to whatever network or cloud resources they will use (shared folders, backup systems, email address connected to email client, etc.).
  - Use any available tooling to minimize MSP labor in this process.
    - Stretch Goal: partially or fully automate this process (imagine entering only the new user's name and email into a script and then letting the setup take care of itself).


### Backup Solution:
  - User endpoints will need a backup solution.
  - Backups should:
    - Preserve user data.
    - Minimize user downtime in the event of system failure.


### OS Diversity:
  - Your project should include both Windows and Linux systems.
  - What role they serve (user endpoint, server, etc.) is up to you.


### Collaboration:
  - Each user endpoint needs an email client:
    - Email client should be connected to the user's email.
    - Select and email provider appropriate for the company's needs:
      - Assume that the company will have its own domain name, and that the email provider will be providing the backend.
      - Create an example account on that provider for demonstration purposes.
  - Shared files:
    - Users need to be able to collaborate by sharing files and documents.
    - Choose and implement an appropriate solution for this need.


### Remote Access:
  - You will need to establish technology and protocols for secure remote access.
  - You (the MSP) will need remote Admin/root access for management and troubleshooting.
  - Depending on the scenario, users may also need remote access on occasion. Evaluate the client's needs and implement an appropriate solution.
  - Stretch Goal: implement a solution for remotely accessing a user's system over the internet to help them troubleshoot a problem. Assume that the MSP must securely access the machine over the internet.

## Grading

Each team member's grade is split between their individual effort, and the project's technical merit.

Individual effort is graded based on contributions to project deliverables, and professionalism in the presentation.

Technical merit of the project overall is evaluated according the requirements. The Project Grade is a combination of the Presentation (55%) and the Deliverables (45%)

### Presentation (50%)

Components of the presentation must include:

* Team and individual introductions. (5 min)
  * One interesting/fun fact about yourself
  * Your career ambitions (where you've been, where you're going, and why)
* Topical Overview (5 min)
  * As the "Problem Domain", describe the project scenario you were assigned and the overall client requirements.
  * What solutions to the problem domain will your team be presenting today? Why did you choose these solutions?
* Present live technical demonstrations
  * All team members must present an equal share of the live technical demonstrations.
  * The presentation consists of a full provisioning demonstration of a computer system, as well as key operations.
    * OS provisioning
      * Demonstrate customization and provisioning of the required OS.
        * Skip processes that take a long time to complete. Remember, your demo time is limited.
    * System operations
      * Demonstrate user provisioning of a single end-user (non-administrator account).
      * Demonstrate how remote connectivity will be established to the system by both your MSP and its end user.
        * Users must have remote access to a accounts with the correct level of permissions. For access by MSP employees, Administrator access is appropriate, while it may not be for customer employees.
      * Demonstrate how the most important software applications and network resource features will be provisioned and supported by the MSP.
        * For example: email clients, shared network drives, cloud-based resources.
      * Demonstrate a single file or folder data backup and restoration procedure.
        * How will your MSP mitigate the risk of data loss on this new computer system? Your presentation should mention as well how you would perform a baremetal restoration if the OS were to be rendered inoperable.
    * Task automation
      * The presentation must include a live technical demonstration of a solution that automates repetitive or tedious processes.

### Deliverables (50%)

* GitHub (15%)
  * An appropriately name Github "Organization"
    * Sufficient documentation in the top level README to explain to a stranger who you are, what this project was about, and how all of the material in the repo pertains to it.
      * This README should be:
        * Attractively formatted
        * Include links to relevant files and repos.
        * Include links to each of your own Github accounts AND LinkedIn accounts.
  * Separate repositories for:
    * Presentation and Project Organization materials.
    * SOPs, Topologies, and other documentation.
    * Scripts.
  * Each of these repositories should have attractive and informative `README.md`, and well labeled links to any relevant files within the repo.
* Presentation Material (5%)
  * Slide deck, as a PDF.
  * A link to the video of your presentation (when it becomes available).
* Standard Operating Procedures (SOPs), Scripts, and System Documentation (30%)
  - SOP Requirements:
    - Each SOP should include the following sections:
      - Purpose
      - Scope
      - Responsibilities
      - Prerequisites
      - Procedures
      - References
      - Definitions
      - Revision History (including who contributed to each revision)
    - For **each** SOP, attribute authorship to the team member
    - SOPs can either be:
      - Worked on as google docs and submitted as PDFs
      - Worked on and submitted as Markdown files
    - SOPs should share a common format (see [SOP-example-template](./SOP-example-template.md))
    * Compose thorough SOPs for each of the following:
      * How will you backup and restore user data, critical infrastructure configurations and hosted data?
      * How will you securely dispose of sensitive data from storage media?
      * How will you perform the support engagements/interactions?
      * What troubleshooting methodology will your technicians follow during support engagements?
      * How will user or department technology purchase requests be handled?
      * How will technology needs be handled for employees being onboarded?
      * How will technology needs be handled for employees being terminated?
      * How will remote, offsite support engagements take place?
      * How will you secure Windows 10 endpoint workstations from data loss and malware threats?
      * How will you administer and support Windows systems?
      * How will your company enhance the network’s usability and security?
      * How will you support company cloud services?
  * Scripts:
    * Include any Scripts written in the course of the project.
  * Systems Documentation:
    * Include in your deliverable any relevant information required for the operation of the demonstrated system.
      * Any config files which you created or customized, exported in an appropriate format (such as json)
    * Network Topology


