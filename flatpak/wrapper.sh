#!/bin/bash
# Copy game data to a writable location on first run, then work from there.
# The game writes colditz.ini, save files, and patches some data files,
# so it must run from a writable directory.
GAME_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/colditz-escape"

if [ ! -d "$GAME_DIR" ]; then
    cp -r /app/share/colditz-escape "$GAME_DIR"
fi

cd "$GAME_DIR"
exec /app/bin/colditz "$@"
