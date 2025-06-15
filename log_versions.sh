#!/bin/bash

DATE=$(date +%Y%m%d)
LOGFILE="/home/balam/Downloads/site_versions_$DATE.md"

echo "Saving Hugo and Hugo Blox versions to $LOGFILE"

echo "# Hugo Version" > $LOGFILE
hugo version >> $LOGFILE

echo -e "\n# Modules in 'config/_default/config.yaml'" >> $LOGFILE
if [ -f config/_default/config.yaml ]; then
  grep -A 4 "module:" config/_default/config.yaml >> $LOGFILE
else
  echo "File config/_default/config.yaml not found." >> $LOGFILE
fi

echo -e "\n# Modules in 'go.mod'" >> $LOGFILE
if [ -f go.mod ]; then
  cat go.mod >> $LOGFILE
else
  echo "File go.mod not found." >> $LOGFILE
fi

echo -e "\n# System Info" >> $LOGFILE
uname -a >> $LOGFILE
go version >> $LOGFILE 2>/dev/null

echo "Done."