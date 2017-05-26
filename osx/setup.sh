find * -name "setup.sh" -not -wholename "packages*" | while read setup; do
    echo "./$setup"
    ./$setup -chsh
done

for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
  "Dock" "Finder" "Mail" "Messages" "Safari" "SizeUp" "SystemUIServer" \
  "iCal" "Terminal"; do
  killall "${app}" > /dev/null 2>&1
done
