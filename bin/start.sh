#!/bin/sh
cd ..
SERVER_HOME=`pwd`
CLASSPATH=$SERVER_HOME/lib/*:$SERVER_HOME/config/
JAVA_OPTS=" -server -Xms128m -Xmx2048m -Dserver.home=$SERVER_HOME"

echo "#######################################################"
echo "#                                                      "
echo "java $JAVA_OPTS -classpath $CLASSPATH cn.openfc.store.Main"
echo "#                                                      "
echo "#######################################################"
#nohup 
java $JAVA_OPTS -classpath $CLASSPATH cn.openfc.store.Main # >/dev/null  2>&1 &
