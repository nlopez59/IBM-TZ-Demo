# IBM zDevOps Demo – MVP Environment

This repository provides a simple environment for learning how to edit, build, and test z/OS COBOL applications using the IBM zDevOps toolchain.

**Author:** Nelson Lopez, IBM zDevOps Architect (June 2026) 
Ver: guest1 6/19/26

## Prerequisites

This demo environment assumes the following components are installed and configured:

* Visual Studio Code with Git
* IBM IDzEE Extension Pack and prerequisites (including Java 21)
* Access to GitHub to clone this repository

## Supported Features (MVP)

This repository demonstrates the core zDevOps developer workflow:

* Clone this repository  
* Open the project folder 
* Create a personal branch
* Edit `source/asample.cbl` using IBM Open Editor
* Submit an "IBM user build"  to compile and bind the code using IBM Dependency Based Build (DBB)
* View build output logs in `logs` 
* Submit the test job `/jcl/asample.jcl`
* View JES job output from Zowe Explorer
* Commit and Sync(Push) your personal branch back to Git. 

## Optional Add-ons

This environment can be extended with additional DevOps capabilities:

* CI/CD integration with GitHub Actions, Azure DevOps, GitLab, and others
* Sample deployment scripts (customization required)
* IBM Open Debug configured in VS Code and z/OS (currently untested)
* IBM Test Accelerator for Z (TAZ) unit testing support planned for Q4 2026

For additional information, contact your IBM DevOps representative.

---

## Internal IBM Setup Notes

1. Provision a TZ image.
1. Run the `adduser` USS script to create a RACF user ID and password.
1. Update `host` in `zowe.config.json` with the TZ IP.
3. Run an initial full-upload build to seed and validate the z/OS sandbox.
4. Verify that the user can:
   * Submit JCL
   * Access datasets and jobs through Zowe
   * Successfully perform a user build from VS Code
