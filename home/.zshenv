# ----------------------------------------------------------------------------
# Environment variables
# Necessary variables needed by various programms and tools
# ----------------------------------------------------------------------------

### Java ###
if [[ -f /usr/libexec/java_home ]]; then
  export JAVA_HOME=$(/usr/libexec/java_home) # see https://goo.gl/mjtp6o
fi
