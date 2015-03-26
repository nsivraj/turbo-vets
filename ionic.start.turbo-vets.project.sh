#!/bin/sh

SCRIPT_STEP=$1

if [ "$SCRIPT_STEP" = "start" ]
then
	if [ -d turbo-vets ]
	then
		echo "The turbo-vets directory already exists, please remove it first then re-run this script: rm -rf turbo-vets"
		exit 1
	fi
    echo "Please make sure gulp is installed...."
    gulp --version
    echo "Please make sure that the Android SDK is installed.... ANDROID_HOME=$ANDROID_HOME"
    android --help
    echo "Starting the turbo-vets ionic application, all output is being redirected to the file ./ionic.start.turbo-vets.project.out"
    echo "PLEASE WAIT FOR THIS SCRIPT TO FINISH...."
	ionic start --id edu.self.turbovets --sass --appname "turbo-vets" turbo-vets sidemenu > ionic.start.turbo-vets.project.out 2>&1
	cd turbo-vets
	ionic plugin add org.apache.cordova.inappbrowser >> ../ionic.start.turbo-vets.project.out 2>&1
	ionic platform add ios >> ../ionic.start.turbo-vets.project.out 2>&1
	ionic platform add android >> ../ionic.start.turbo-vets.project.out 2>&1
	ionic platform add browser >> ../ionic.start.turbo-vets.project.out 2>&1
	bower install ionicons >> ../ionic.start.turbo-vets.project.out 2>&1
	cd ..
elif [ "$SCRIPT_STEP" = "revert" ]
then
	svn update
	svn revert --depth=infinity .
elif [ "$SCRIPT_STEP" = "verify" ]
then
	#sudo npm update -g ionic
	cd turbo-vets
	bower install >> ../ionic.start.turbo-vets.project.out 2>&1
	ionic build >> ../ionic.start.turbo-vets.project.out 2>&1
	npm test
	echo "If this step was successful then the next step is to run 'ionic serve' from the turbo-vets directory and start developing"
else
	echo "The step '$SCRIPT_STEP' is not valid, use either step 1: 'start' or step 2: 'revert' or step 3: 'verify'"
fi

