#!/bin/bash
# Created on 2020-05-22T10:16:31+1000, using template:imagemagick.sh.tmpl and json:gearbox.json

test -f /etc/gearbox/bin/colors.sh && . /etc/gearbox/bin/colors.sh

c_ok "Started."

c_ok "Installing packages."
APKBIN="$(which apk)"
if [ "${APKBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/imagemagick.apks ]
	then
		APKS="$(cat /etc/gearbox/build/imagemagick.apks)"
		${APKBIN} update && ${APKBIN} add --no-cache --virtual gearbox ${APKS}; checkExit
	fi
fi

APTBIN="$(which apt-get)"
if [ "${APTBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/imagemagick.apt ]
	then
		DEBS="$(cat /etc/gearbox/build/imagemagick.apt)"
		${APTBIN} update && ${APTBIN} install ${DEBS}; checkExit
	fi
fi


if [ -f /etc/gearbox/build/imagemagick.env ]
then
	. /etc/gearbox/build/imagemagick.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi


c_ok "Generate installed file list"
c_ok "####################"
apk info -v -R gearbox | sed 's/gearbox://' | xargs apk info -L | awk '/bin\//{print"/"$1}'
c_ok "####################"


c_ok "Finished."
