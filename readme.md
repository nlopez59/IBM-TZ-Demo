# IBM zDevOps Demo – MVP IBM TechZone Environment (v2)

This repository provides a simple environment for learning how to edit, build, and test z/OS COBOL applications using the IBM zDevOps toolchain.

**Author:** Nelson Lopez, IBM zDevOps Architect (June 2026) 

## Predefined zOS Users and passwords 
 Each member of you team can use one of this RACF accts.  

 guest1   motions01
 guest2   motions02
 guest3   motions03
 guest4   motions04
 guest5   motions05

## Prerequisites

This demo environment assumes the following desktop components are installed and configured:

* Test access to the demo environment with this desktop command where 'guestx' is your RACF acct:  
`ssh guestx@52.116.128.85 -p 2022`

>Note: Access to the above zOS host will expire 2 weeks after provisioning.  

* Install Visual Studio Code with Git 

* Install the "IBM IDzEE Extension Pack" and Java 21

* You will need access to github.com  

## Supported Features (MVP)

This repository support build simple Cobol programs.

Follow these steps:
* Clone this repository in VS Code: https://github.com/nlopez59/IBM-TZ-Demo.git
* Create a personal branch.
* Change the RACF account in [settings.json](.vscode/settings.json#L6)
* In VS Code Zowe Explorer, provide your RACF account as you navigate to your USS home directory.
* Edit `source/asample.cbl` using the IBM Open Editor.
* Submit an **IBM User Build** to compile your changes using IBM Dependency Based Build (DBB).
* View the build output logs in this project's `logs` folder.
* Submit the test job [`source/jcl/asample.jcl`](source/jcl/asample.jcl#L7).
* View the JES job output from Zowe Explorer.

See the demo: https://youtu.be/sbLJC4uZ3YE

For additional information, contact your IBM DevOps representative.
---

## For IBM Internal users 
1. Provision a TZ image.
1. SSH into the instance  (password provided by admin):
   `ssh ibmuser@TZ-IP?  -p 2023 `
1. Run the `adduser` USS script to create RACF accts and passwords.
1. Update `host` in this projects [`zowe.config.json`](zowe.config.json#L11) with the TZ IP.
1. Add this file to each user's home directory [.profile](conf/.profile) 
1. Press cntl/shift/b to seed the DBB zBuilder configuration files. 
3. Run an initial DBB "full-upload" build to test the configuration.
