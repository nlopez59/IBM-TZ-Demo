# This is a sample .profile for zDevops POC 2026 v (NJL) 
# Review and update all paths  

# ======================================================================
# Wazi Deploy Dependencies (zoau and Python)
# Ref: https://www.ibm.com/docs/en/developer-for-zos/17.0.x?topic=guide-installing-wazi-deploy-zos
# ======================================================================
    # Init with any predefined PATH and LIBPATH from /etc/profile (review for compatibility)
    export PATH=$PATH:/bin:.                 
    export LIBPATH=$LIBPATH:/lib:/usr/lib:.

    export ZOAU_HOME=/usr/lpp/IBM/zoautil
    export PATH=/usr/lpp/IBM/cyp/v3r12/pyz/bin:/usr/lpp/IBM/zoautil/bin:$PATH
    export LIBPATH=/usr/lpp/IBM/cyp/v3r12/pyz/lib:/usr/lpp/IBM/zoautil/lib:$LIBPATH

    umask 022

# ======================================================================
# JAVA 21
# ======================================================================
    export JAVA_HOME=/usr/lpp/java/J21.0_64
    export PATH=$JAVA_HOME/bin:$JAVA_HOME/bin/classic:$PATH
    export LIBPATH=/usr/lib/java_runtime:$LIBPATH    
 
# ======================================================================
# Standard File Tagging support for Git
# ======================================================================
    export _BPXK_AUTOCVT=ON
    export _CEE_RUNOPTS="$_CEE_RUNOPTS FILETAG(AUTOCVT,AUTOTAG) POSIX(ON)"
    export _TAG_REDIR_ERR=txt
    export _TAG_REDIR_IN=txt
    export _TAG_REDIR_OUT=txt
    export TERM=xterm

# ======================================================================
# DBB 
# ref: https://www.ibm.com/docs/en/adffz/dbb/3.0.x?topic=customization-environment-variables
# ======================================================================

    # DBB SMPE Install PATH (Set as Readonly)
    export DBB_HOME=/usr/lpp/IBM/dbb
    export PATH=$PATH:$DBB_HOME/bin
    export LIBPATH=$LIBPATH:$DBB_HOME/lib

    # DBB zBuilder Admin Configuration PATH (Set ReadWrite for DevOps Admin Team, ReadOnly all others) 
    # Change $DBB_BUILD_HOME to the Home dir of the DBB zBuilder PATH. 
    export DBB_BUILD_HOME=/u/??? 
    export DBB_BUILD=$DBB_BUILD_HOME/zdevops/conf/build
    export DBB_CONF=$DBB_BUILD


# ------------------------------------------------------------
# FIRST TIME SETUP NOTES SECTION
# ------------------------------------------------------------
    # Add this .profile to the DevOps Admin User's HOME Dir (/u/???)

    # Then ssh into USS and run: 
    #   DBB_BUILD_HOME=/u/???    
    #   cd $DBB_BUILD_HOME
    #   mkdir -p zdevops/conf/build  

    #   DBB_HOME=/usr/lpp/IBM/dbb
    #   cp $DBB_HOME/samples/languages/* zdevops/conf/build     
    #   cp $DBB_HOME/build/*.yaml  zdevops/conf/build 
      
    # IVP:
    #  dbb --version              # V3.0.5+
    #  python --version           # V3.13.8+
    #  echo $(git --version)      # V2.51.2+ 
    #  java --version             # v21.0.8+ 
    #  df -P .                    # 1.9m/512_bkls+ 
    #  zoaversion -c              # Ver v1.4.0+

    #  . /global/opt/pyenv/gdp/bin/activate
    #  pip list    # wazideploy V3.0.6+, zoau-py v1.4.0+
    #  deactivate 
    # This section of the .profile can be removed 


