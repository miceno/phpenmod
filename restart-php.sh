#!/usr/bin/env bash

UNITS=$(systemctl list-unit-files \*php\* --plain --state=enabled --no-legend | cut -d ' ' -f1)

systemctl restart $UNITS
