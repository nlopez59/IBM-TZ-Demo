//GUEST1A JOB CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),REGION=0M
//*
//* Test a sample cobol pgm build in VS Code 
//* Chage the HLQ to your assign User ID
//* 
//DEMO     EXEC PGM=ASAMPLE 
//STEPLIB  DD  DISP=SHR,DSN=GUEST1.VSCODE.LOAD  HLQ for builds
//SYSOUT   DD SYSOUT=*
