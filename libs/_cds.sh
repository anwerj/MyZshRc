cds(){
	case $1 in
		c) cd ${MY_PROJECT_FOLDER}connectv2
			;;
		a) cd ${MY_PROJECT_FOLDER}araas
			;;
		i) cd ${MY_PROJECT_FOLDER}integrations
			;;
		k) cd ${MY_PROJECT_FOLDER}cue
			;;
		m) cd ${MY_PROJECT_FOLDER_ROOT}my/$2
			;;
		l) cd ${MY_PROJECT_FOLDER}
			;;
		h) cd ${MY_PROJECT_FOLDER_ROOT}
			;;
		t) cd ${MY_PROJECT_FOLDER_ROOT}test
			;;
		d) cd ${MY_PROJECT_FOLDER_ROOT}test/cli/DSPHP
			;;
		dw) cd ${MY_HOME_FOLDER}Downloads
			;;
		dc) cd ${MY_HOME_FOLDER}Documents
			;;
		*) 	'cdsHelp'
			;;
	esac
}
cdsHelp(){
	echo "Looks like you need help, mate!"
	echo "c = '${MY_PROJECT_FOLDER}connectv2'"
	echo "a = '${MY_PROJECT_FOLDER}araas'"
	echo "i = '${MY_PROJECT_FOLDER}integrations'"
	echo "k = '${MY_PROJECT_FOLDER}cue'"
	echo "m = '${MY_PROJECT_FOLDER}my'"
	echo "l = '${MY_PROJECT_FOLDER}"
	echo "h = '${MY_PROJECT_FOLDER_ROOT}'"
	echo "t = '${MY_PROJECT_FOLDER_ROOT}test'"
	echo "dw = '/~Downloads'"
	echo "dc = '/~Documents'"
}
