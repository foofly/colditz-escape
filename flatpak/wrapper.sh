#!/bin/bash
# The game reads assets from its working directory
cd /app/share/colditz-escape/
exec /app/bin/colditz "$@"
