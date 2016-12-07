alias gls='glideusd start'

pcode(){
    phpmd $1 text codesize;
}

alias gis='git status'

alias cls='find . -name ".DS_Store" -depth -exec rm {} \;'

log(){
    local folderpath='storage/logs/'
    local logfile=`ls -t ${folderpath}* | head -1`
    tail -f ${logfile}
}

chs(){
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