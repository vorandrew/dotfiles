#!/usr/bin/env bash

find * -name "*.sh" -not -wholename "setup*" | while read setup; do
    echo "./$setup"
    ./$setup
done

for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
  "Dock" "Finder" "Mail" "Messages" "Safari" "SizeUp" "SystemUIServer" \
  "iCal" "Terminal"; do
  killall "${app}" > /dev/null 2>&1
done
