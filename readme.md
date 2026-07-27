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

* Install Visual Studio Code with Git and Java 21

* Install the "IBM IDzEE Extension Pack" 

* You will need access to github.com  


## Supported Features (MVP)
This repository support build simple Cobol programs. 
Follow these steps: 
* Clone this repository in VS code 
* Create a personal branch
* Change the RACF acct in [settings.json](.vscode/settings.json#L6)     
* Edit `source/asample.cbl` using the IBM Open Editor
* Submit an "IBM User build"  to compile your changes using IBM Dependency Based Build (DBB)
* View build output logs in this projects `logs` folder 
* Submit the test job [`/jcl/asample.jcl`](source/jcl/asample.jcl#L7)
* View JES job output from Zowe Explorer

Demo https://youtu.be/YrDtqLx2VGo

For additional information, contact your IBM DevOps representative.

---

## For IBM Internal users 
1. Provision a TZ image.
1. SSH into the instance  (password provided by admin):
   `ssh ibmuser@TZ-IP?  -p 2023 `
1. Run the `adduser` USS script to create a RACF accts and password.
1. Update `host` in this projects `zowe.config.json` with the TZ IP.
1. Add this file to each user's home directory [.profile](conf/.profile) 
1. Press cntl/shift/b to seed the DBB zBuilder configuration files. 
3. Run an initial DBB "full-upload" build to test the configuration.
