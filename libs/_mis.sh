#!/usr/bin/env zsh
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
           echo 'puc : phpunit --debug --group=current'
           echo 'puf : phpunit --debug --filter=filter'
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
        `echo "$1" | sudo -S chmod -R o+wx storage`
    elif [ -n "${MY_ROOT_PASSWORD}" ]; then
        echo 'Loaded Password'
        `echo ${MY_ROOT_PASSWORD} | sudo -S chmod -R o+wx storage`
    else
        echo 'Enter Password'
        `sudo chmod -R o+wx storage`
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
__multitail(){
    # When this exits, exit all back ground process also.
    trap 'kill $(jobs -p)' EXIT

    # iterate through the each given file names,
    for file in "$@"
    do
        # show tails of each in background.
        tail -f $file &
    done

    # wait .. until CTRL+C
    wait
}
__int(){
    /usr/bin/xmodmap /home/aj/.Xmodmap

}
__als(){
    alias ls="ls -p"
    alias ll="ls -lah"
    alias gim='git checkout master && git pull origin master && git checkout -'
    alias gidev='git checkout dev && git pull origin dev && git checkout -'
    alias gica='git commit --amend'
    alias gican='git commit --amend --no-edit'
    alias gio='git push origin HEAD'
    alias gfo='git fetch origin'
    alias cls='find . -name ".DS_Store" -depth -exec rm {} \;'c
    alias tailf="tail -f -b10"
    alias garcl="git tag | grep '^archive/'"
    alias par='php artisan'
    alias mgm='go run /Users/aj/projects/go/src/my/.'
}
__als
gfco(){
    gfo $1 && gco $1
}

garc(){
    git tag archive/$1 $1 && git branch -D $1;
}
garcall(){
    git for-each-ref --format '%(refname:short)' refs/heads | grep -Ev 'master|canary|dark|p2po' |
    while IFS= read -r line
    do
       garc "$line"
    done
}
garcr(){
    git checkout -b $1 archive/$1
}

#
#__git_com(){
#    __git_complete garc _git_checkout
#    __git_complete gars _git_checkout
#}
#__git_combootApplicationTrait

mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

nsukill ()
{
    launchctl unload /System/Library/LaunchDaemons/com.apple.nsurlstoraged.plist
    launchctl unload /System/Library/LaunchAgents/com.apple.nsurlsessiond.plist
    sudo launchctl unload /System/Library/LaunchDaemons/com.apple.nsurlsessiond.plist
    sudo launchctl unload /System/Library/LaunchDaemons/com.apple.nsurlstoraged.plist
}
