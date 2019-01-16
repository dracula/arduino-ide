#!/bin/bash

repo_dir=$(dirname $0)
arduino_theme_dir=/Applications/Arduino.app/Contents/Java/lib
repo_theme=$repo_dir/theme
original_theme="$arduino_theme_dir/theme"
backup_theme="$arduino_theme_dir/theme_backup"

function showOptions() {
    echo "-i, --install,  Install dracula theme."
    echo "-u, --uninstall,  Uninstall dracula theme."
    echo "-h, --help,  Show this help message."
    echo "Usage: $(basename $0) [Options]"
    echo "Example: $(basename $0) --install"
}

function install() {
    if [[ ! -d "$backup_theme" ]]; then
    	osascript -e 'tell application "Arduino" to quit'
    	echo -n "Backing up default theme... "
      mv "$original_theme" "$backup_theme"
      echo " Done."
      echo -n "Installing dracula theme..."
      cp -R "$repo_theme" "$original_theme"
      echo " Done."
    else
      echo "Dracula theme is already installed."
      echo
      showOptions
      exit 1
    fi
}

function uninstall() {
    if [[ -d "$backup_theme" ]]; then
    	osascript -e 'tell application "Arduino" to quit'
    	echo -n "Uninstalling dracula theme..."
    	rm -rf "$original_theme"
    	echo " Done."
    	echo -n "Restoring default theme..."
    	mv "$backup_theme" "$original_theme"
    	echo " Done."
    else
      echo "Dracula theme is not installed."
      echo
      showOptions
      exit 1
    fi
}

case "$1" in
    --install|-i)
        install
    ;;
    --uninstall|-u)
        uninstall
    ;;
    --help|-h|*)
        showOptions
esac
