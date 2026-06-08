//IBMUSERN JOB CLASS=A,MSGCLASS=H
//*----------------------------------------------------------------*
//*  Licensed Materials - Property of IBM                          *
//*  (c) Copyright IBM Corp. 2021 All Rights Reserved              *
//*  US Government Users Restricted Rights - Use, duplication or   *
//*  disclosure restricted by GSA ADP Schedule Contract with       *
//*  IBM Corp                                                      *
//*----------------------------------------------------------------*
//NEWCOPY JOB NEWCOPY,'NEWCOPY',NOTIFY=&SYSUID,CLASS=A,MSGCLASS=H
//*********************************************************************
//SDSF  EXEC PGM=SDSF
//ISFOUT DD SYSOUT=*
//CMDOUT DD SYSOUT=*
//ISFIN  DD *
  SET CONSOLE BATCH
  SET DELAY 600
{% for target in item.targets %}
  /F {{ item.vars.cicsjob }},CEMT SET PROG({{ target }}) NEWCOPY
{% endfor %}
  PRINT FILE CMDOUT
  ULOG
  PRINT
  PRINT CLOSE
/*
//