#!/bin/bash

REQUIRED_PKG="imwheel"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK

if [ "" = "$PKG_OK" ]; then
	# Install imwheel and configure imwheel for current user
	echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
	sudo apt-get --yes install $REQUIRED_PKG 
fi

if [ ! -f ~/.imwheelrc ]; then
	# Edit config file
	echo -e \
	'".*"\n' \
	'None,      Up,   Button4, 4 \n' \
	'None,      Down, Button5, 4 \n' \
	'Control_L, Up,   Control_L|Button4\n' \
	'Control_L, Down, Control_L|Button5\n' \
	'Shift_L,   Up,   Shift_L|Button4\n' \
	'Shift_L,   Down, Shift_L|Button5\n'\
	> ~/.imwheelrc

fi

# Get current wheel speed value
CURRENT_VALUE=$(awk -F 'Button4,' '{print $2}' ~/.imwheelrc)
# Display slider
NEW_VALUE=$(zenity --scale --window-icon=info --ok-label=Apply --title="Wheelies" --text "Mouse wheel speed:" --min-value=1 --max-value=10 --value=`echo $CURRENT_VALUE` --step 1)

if [ "$NEW_VALUE" == "" ]; then
	echo "No value set"
	exit 0
fi

# Replace old value with current
sed -i "s/\($TARGET_KEY *Button4, *\).*/\1$NEW_VALUE/" ~/.imwheelrc # find the string Button4, and write new value.
sed -i "s/\($TARGET_KEY *Button5, *\).*/\1$NEW_VALUE/" ~/.imwheelrc # find the string Button5, and write new value.

# Remove imwheel from bashrc
sed -i '/imwheel/d' ~/.bashrc
# Add imwheel to bashrc and disable imwheel management for back and fordward mouse buttons
echo "imwheel --kill --buttons \"4 5\" > /dev/null 2> /dev/null" >> ~/.bashrc

# Kill current process
pgrep -f imwheel | xargs kill > /dev/null 2> /dev/null

# Reload current session
echo "You maybe need to restart a new terminal to apply change"
. ~/.bashrc
#source ~/.bashrc
#exec bash
