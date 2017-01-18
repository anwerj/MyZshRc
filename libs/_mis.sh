alias gls='glideusd start'

alias gis='git status'

alias cls='find . -name ".DS_Store" -depth -exec rm {} \;'

mis(){
    case $1 in
        sar) sudo service apache2 restart
            ;;
        int) __int $2
            ;;
        sdb) __sdb $2
            ;;
        chs) __chs $2
            ;;
        log) __log $2
            ;;
        pcd) __pcode $2
            ;;
        *) echo 'We have ...'
           echo 'sar : apache2 restart'
           echo 'sdb : switch db'
           echo 'chs : chmod the storage'
           echo 'log : tail latest logfile'
           echo 'pcd : phpmd codesize'
            ;;
    esac
}

__log(){
    local folderpath='storage/logs/'
    local logfile=`ls -t ${folderpath}* | head -1`
    tail -f ${logfile}
}

__chs(){
    if [[ -n "$1" ]]; then
        echo 'Need Password';
        `echo "$1" | sudo -S chmod -R 777 storage bootstrap/cache`
    elif [ -n "${MY_ROOT_PASSWORD}" ]; then
        echo 'Loaded Password'
        `echo ${MY_ROOT_PASSWORD} | sudo -S chmod -R 777 storage bootstrap/cache`
    else
        echo 'Enter Password'
        `sudo chmod -R 777 storage bootstrap/cache`
    fi
}
__sdb(){
    if [[ "$1" ]]; then
        local so="s/DB_DATABASE=connect2_.*/DB_DATABASE=connect2_$1/g";
        `sed -i -e $so ${MY_PROJECT_FOLDER}connectv2/.env ${MY_PROJECT_FOLDER}integrations/.env`
        echo 'DB changed to connect2_'${1}
    else
        echo 'DB name required!'
    fi
}
__pcode(){
    phpmd $1 text codesize;
}
__int(){
    /usr/bin/xmodmap /home/aj/.Xmodmap
}