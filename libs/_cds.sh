cds(){
	case $1 in
		c) cd ${MY_PROJECT_FOLDER}connectv2
			;;
		a) cd ${MY_PROJECT_FOLDER}api_v2
			;;
		i) cd ${MY_PROJECT_FOLDER}integrations
			;;
		k) cd ${MY_PROJECT_FOLDER}cue
			;;
		r) cd ${MY_PROJECT_FOLDER}raas
			;;
		m) cd ${MY_PROJECT_FOLDER}MyMongiew
			;;
		l) cd ${MY_PROJECT_FOLDER}
			;;
		h) cd ${MY_PROJECT_FOLDER_ROOT}
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
	echo "a = '${MY_PROJECT_FOLDER}api_v2'"
	echo "i = '${MY_PROJECT_FOLDER}integrations'"
	echo "k = '${MY_PROJECT_FOLDER}cue'"
	echo "r = '${MY_PROJECT_FOLDER}raas'"
	echo "m = '${MY_PROJECT_FOLDER}MyMongiew'"
	echo "l = '${MY_PROJECT_FOLDER}"
	echo "h = '${MY_PROJECT_FOLDER_ROOT}'"
	echo "dw = '/~Downloads'"
	echo "dc = '/~Documents'"
}
