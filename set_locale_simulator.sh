#!/bin/bash

DEVICES_PATH="~/Library/Developer/CoreSimulator/Devices"
GLOBAL_PREFS_FILE_NAME=".GlobalPreferences.plist"

echo "Print $GLOBAL_PREFS_FILE_NAME paths:"
PATHS=$(find ~/Library/Developer/CoreSimulator/Devices -name $GLOBAL_PREFS_FILE_NAME)

LANGUAGE="sv"
LOCALE="sv_SE"

for PLIST in $PATHS
do
    UDID=$(echo $PLIST | grep -E -o -i "([0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12})")

    echo "UDID: $UDID"

    if [ -f "$PLIST.bak" ]; then
        echo "Backup already exists. Won't replace it."
    else
        echo "Backing up…"
        cp $PLIST "$PLIST.bak"
    fi

    echo "JSON content before replacement:"
    echo $(plutil -p $PLIST)

    echo "Replacing language…"
    plutil -replace AppleLocale -string $LOCALE $PLIST

    echo "Replacing locale…"
    plutil -replace AppleLanguages -json "[ \"$LANGUAGE\" ]" $PLIST

    echo "JSON content before replacement:"
    echo $(plutil -p $PLIST)

    echo ""
done

echo "Done!"
