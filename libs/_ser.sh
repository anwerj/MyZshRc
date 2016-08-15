ser(){

	case $1 in
		r)	cd ${MY_PROJECT_FOLDER}rockmongo/
			php -S 127.0.0.1:13305
				;;
		b) cd ${MY_PROJECT_FOLDER}beanstalk_console/public/
			php -S 127.0.0.1:13306
				;;
		p)	cd ${MY_PROJECT_FOLDER}paymentTest/
			php -S 127.0.0.1:13307
				;;
		m)	cd ${MY_PROJECT_FOLDER}MyMongiew/
			supervisor -e 'js|html' index.js
				;;
		a)	cd ${MY_PROJECT_FOLDER}raas/
			supervisor -e 'js|html' index.js
				;;
	esac
}
