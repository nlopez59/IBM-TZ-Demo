# This is a sample .profile for zDevops POC 2026 v (NJL) 
# Review al lpaths and tools included in your POC Design 

# ======================================================================
# Native Profile  WITH ZOAU, Python and supporting Java Libs 
# ======================================================================
    export ZOAU_HOME=/usr/lpp/IBM/zoautil
    export PATH=/usr/lpp/IBM/cyp/v3r12/pyz/bin:/usr/lpp/IBM/zoautil/bin:$PATH
    export LIBPATH=/usr/lib/java_runtime:/usr/lpp/IBM/cyp/v3r12/pyz/lib:/usr/lpp/IBM/zoautil/lib:$LIBPATH

    umask 022
    export PATH=$PATH:/bin
    export LIBPATH=$LIBPATH:/lib:/usr/lib:.


# ======================================================================
# Stadard USS/ File Tagging support for Git
# ======================================================================
    export _BPXK_AUTOCVT=ON
    export _CEE_RUNOPTS="$_CEE_RUNOPTS FILETAG(AUTOCVT,AUTOTAG) POSIX(ON)"
    export _TAG_REDIR_ERR=txt
    export _TAG_REDIR_IN=txt
    export _TAG_REDIR_OUT=txt
    export TERM=xterm
# ======================================================================



# add-on  for DevOps POC
# DBB
    export DBB_HOME=/usr/lpp/IBM/dbb
    export PATH=$PATH:$DBB_HOME/bin
    export LIBPATH=$LIBPATH:$DBB_HOME/lib

    # the default vsc settings json dbb workdir var used in user builds 
    # POC_USER_HOME is the zFS HOme dir where the DBB zBuilder conf files were created
    # See sample zBuilder files in 
    export POC_USER=/u/??? 
    export DBB_BUILD=$POC_user/zdevops/conf/build
    export DBB_CONF=$DBB_BUILD
    

# JAVA
    export JAVA_HOME=/usr/lpp/java/J21.0_64
    export PATH=$JAVA_HOME/bin:$JAVA_HOME/bin/classic:$PATH
    

# zoua

