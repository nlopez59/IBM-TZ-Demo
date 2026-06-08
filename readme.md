**internal notes** 
This repo and readme are meant tof external users 
Once a TZ sandbox is created, point them to the GA version of this repo for hands-on learning. 

But first: 
- run the adduser sh script on USS to create a new RACF ID/password for the user
    - I copied it from the June TZ bersion in ibmuser.  Check for update in newer TZ images 
- run a full upload bulld to seed and pre-test 
- run JCL and access MVS via Zowe



## IBM zDevOps demo

This is a basic repo to learn how to edit, build and test zOS Mainframe cobol apps under IBM's zDevops framework.
Author: Nelson Lopez (IBM zDevOps Arch) 

This repo support the zDevOps stack configured with:
- VS Code with Git - Developer Desktop
- IBM IDZee Extension Pack and their prerequisites like Java 21 - See VS Code Market place 
- Ability to clone from GitHub - this repo to start 
- Access to a mainframe - add it IP in the zowe.config.json host variable 

Support Features - MVP model:
- use Git to create a personal branch.  Dont change this branch please 
- use IBM Open Editor to edit the 'source/asample.cbl' 
- right click on the code to run an "IBM user build" with DBB on MVS
- Submit JCL to test your changes in batch 
- Use Zowe explorer to access your mainframe datasets and jobs


Reach out to you IBM DevOp contact for mor details 
