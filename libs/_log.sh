log(){
    local folderpath='storage/logs/'
	local logfile=`ls -t ${folderpath}* | head -1`
	tail -f ${logfile}
}

com(){

	case $1 in
		p) sudo chmod -R 777 storage/ bootstrap/cache/
			;;
        *) echo "Invalid operand"
			;;
	esac
}
