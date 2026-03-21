#!/bin/bash
# Copy game data to a writable location on first run, then work from there.
# The game writes colditz.ini, save files, and patches some data files,
# so it must run from a writable directory.
GAME_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/colditz-escape"
APP_VERSION_FILE="/app/share/colditz-escape/.config_version"
USER_VERSION_FILE="$GAME_DIR/.config_version"

if [ ! -d "$GAME_DIR" ]; then
    cp -r /app/share/colditz-escape "$GAME_DIR"
elif [ -f "$APP_VERSION_FILE" ] && ! diff -q "$APP_VERSION_FILE" "$USER_VERSION_FILE" > /dev/null 2>&1; then
    # App was updated with new control defaults — remove stale config so it regenerates
    rm -f "$GAME_DIR/colditz.ini"
    cp "$APP_VERSION_FILE" "$USER_VERSION_FILE"
fi

cd "$GAME_DIR"
exec /app/bin/colditz "$@"
