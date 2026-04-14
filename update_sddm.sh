#!/bin/bash

# 1. Your list of base names (without extensions)
# Just put the name of the file here
NAMES=("soldier" "spino" "peter" "fabelmans" "metro" "throne" "bloater" "hayes" "docking" "sinners" "drone" "backrooms" "blackhole" "void" "boat" "bomb" "gforce" "giraffe" "guitar" "maverick" "millers" "sandman" "steal" "sunset" "window" "wormhole")

# 2. Pick a random name
SELECTED=${NAMES[$RANDOM % ${#NAMES[@]}]}

# 3. Path to your config
CONF_FILE="/usr/share/sddm/themes/silent/configs/rei.conf"

isFound(){
  argument=$1
  for item in "${NAMES[@]}"; do
    if [ "$item" == "$argument" ]; then
        return 0
    fi
  done
  return 1
}

if [[ "$#" -gt 0 ]]; then
  if isFound "$1"; then	
	item=$1
  	sed -i "s|^background =.*|background =\"$item.mp4\"|" "$CONF_FILE"
  	sed -i "s|^animated-background-placeholder =.*|animated-background-placeholder =\"$item.png\"|" "$CONF_FILE"
	echo "Docking successful, Slick. All 3 coordinates set to: $item"
  else
	echo "Sorry this keyword was not found. Check if the keyword exist in the tuples"
  fi
else
  #take random
  sed -i "s|^background =.*|background =\"$SELECTED.mp4\"|" "$CONF_FILE"
  sed -i "s|^animated-background-placeholder =.*|animated-background-placeholder =\"$SELECTED.png\"|" "$CONF_FILE"
  echo "Random Picking...
Docking successful, Slick. All 3 coordinates set to: $SELECTED"

fi

