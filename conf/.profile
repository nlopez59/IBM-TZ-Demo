#  sample for zDevOps POC - basics  


#Java v12 64 bit 
    export JAVA_HOME=/usr/lpp/java/java21/current_64/
    export PATH=$JAVA_HOME/bin

## DBB runtime v3
    export DBB_HOME=/u/<racfUser>/dbb

    export PATH=$DBB_HOME/bin:$PATH
    export LIBPATH=$LIBPATH:$DBB_HOME/lib


## DBB zBuilder config 
    export zdo=<racfUser_USS_Home>/zdevops
    export DBB_CONF=$zdo/conf/build
    export DBB_BUILD=$zdo/conf/build 
    export CLASSPATH=$zdo/conf/build/logging:$CLASSPATH


