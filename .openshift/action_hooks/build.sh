#!/bin/bash
# This is a simple script and will be executed on your CI system if 
# available.  Otherwise it will execute while your application is stopped
# before the build step.  This script gets executed directly, so it
# could be python, php, ruby, etc.
set -x
echo SETTING GRADLE HOME
export GRADLE_USER_HOME=$OPENSHIFT_DATA_DIR/gradle
export GRADLE_HOME=$OPENSHIFT_DATA_DIR/gradle-1.6
export PATH=$GRADLE_HOME/bin:$PATH
gradle build