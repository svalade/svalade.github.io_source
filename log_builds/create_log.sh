#!/bin/bash

# README: logs the versions of Hugo and its modules used in a successful site build.

DATE=$(date +%Y%m%d)
LOGFILE="log_build_$DATE.md"

echo "Saving Hugo and Hugo Blox versions to $LOGFILE"

{
  echo "# Hugo Version"
  hugo version

  echo -e "\n# Modules in 'config/_default/config.yaml'"
  if [ -f ../config/_default/config.yaml ]; then
    # grep -A 10 "module:" ../config/_default/config.yaml
    awk '/module:/ {flag=1; print; next} /^#/ {flag=0} flag' ../config/_default/config.yaml
  else
    echo "File config/_default/config.yaml not found."
  fi

  echo -e "\n# Modules in 'go.mod'"
  if [ -f ../go.mod ]; then
    cat ../go.mod
  else
    echo "File go.mod not found."
  fi

  echo -e "\n\n# System Info"
  uname -a
  go version 2>/dev/null || echo "Go not installed or not in PATH"

} >> "$LOGFILE"

echo "Done."
