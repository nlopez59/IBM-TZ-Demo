# IBM zDevOps Demo – MVP IBM TechZone Environment (v2)

This repository provides a basic z/OS environment for learning how to edit, build, and test COBOL applications using the IBM zDevOps toolchain within IBM's TechZone environment.



## Predefined z/OS Users and Passwords

Each member of your team can use one of the following RACF accounts.

| RACF User | Password |
|------------|----------|
| `guest1` | `motion01` |
| `guest2` | `motion02` |
| `guest3` | `motion03` |
| `guest4` | `motion04` |
| `guest5` | `motion05` |

## User Prerequisites

This demo environment assumes the following desktop components are installed and configured:

* Test access to the demo environment with this desktop command where 'guestx' is your RACF acct:  
`ssh guestx@52.116.128.85 -p 2022`

>Note: Access to the above zOS host will expire 2 weeks after provisioning.  

* Install Visual Studio Code with Git 

* Install the "IBM IDzEE Extension Pack" and Java 21

* You will need access to github.com  

## Supported Features (MVP)

Follow these steps to configure, build and test a sample Cobol program:
* Using the HTTPS URL format, clone this repository in VS Code: https://github.com/nlopez59/IBM-TZ-Demo.git
* Create a personal branch.
* Change the RACF account in [settings.json](.vscode/settings.json#L6)
* In VS Code Zowe Explorer, enter your RACF account as you navigate to your USS home directory `/u/guestx`.
* Edit [source/asample.cbl](source/cobol/asample.cbl) using the IBM Open Editor.
* Run an **IBM User Build** to compile your program using IBM Dependency Based Build (DBB).
* View the build output logs in this project's `logs` folder.
* Submit the sample test job [`source/jcl/asample.jcl`](source/jcl/asample.jcl#L7).
* View the JES job output from Zowe Explorer.

See the demo: https://youtu.be/sbLJC4uZ3YE

For additional information, contact your IBM DevOps representative.

---



#### For IBM Internal Use Only (Work with your LabConnect Lead)
1. Provision a TechZone (TZ) image for your customer. 

1. SSH into the new instance 
   `ssh ibmuser@TZ-IP?  -p 2023 `
   1. Run `adduser` in USS to create new RACF accts and passwords as listed above.
   1. Append [.profile](conf/.profile) to /etc/profile

1. From VS Code: 
   1. Clone this repo's main branch (see above).   
   1. Update `host` in this projects [`zowe.config.json`](zowe.config.json#L11) with the TZ IP.   
   1. Press `cntl/shift/b` to seed the DBB zBuilder configuration files. 
   1. Run "IBM User Build with full upload" on a sample cobol program to initialize and test the configuration.
   1. Push your changes back to Github

**Author:** Nelson Lopez, IBM zDevOps LabConnect FDE (June 2026) 