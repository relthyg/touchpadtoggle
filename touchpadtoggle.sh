#!/bin/bash
#
# Filename: /opt/bin/touchpadtoggle.sh
#
# Is executed by /etc/udev/rules.d//70-touchpad.rules.
# Toggles touchpad and sends message via notify-send.

if [ $1 -eq 0 ]
then
	MOUSE="Mouse detached"
	PAD="Touchpad turned on"
else
	MOUSE="Mouse attached"
	PAD="Touchpad turned off"
fi

USERS=$(users | sort | tr " " "\n" | sort -u | tr "\n" " ")

for USER in $USERS; do
	su $USER -c "XAUTHORITY=/home/$USER/.Xauthority DISPLAY=:0 notify-send \"$MOUSE\" \"$PAD\""
	su $USER -c "XAUTHORITY=/home/$USER/.Xauthority DISPLAY=:0 synclient touchpadoff=$1"
done
