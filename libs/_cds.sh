#!/usr/bin/env zsh
if typeset -f cds> /dev/null; then
  unfunction cds
fi
cds(){
    case $1 in
        w) cd ${MY_WORK_PROJECTS}
            ;;
        r) cd ${MY_WORK_PROJECTS}razorpay.com
            ;;
        a) cd ${MY_WORK_PROJECTS}api
            ;;
        d) cd ${MY_WORK_PROJECTS}dashboard
            ;;
        h) cd ${MY_WORK_PROJECTS}hulk
            ;;
        m) cd ${MY_WORK_PROJECTS}mytools
            ;;
        p) cd ${MY_PERSONAL_PROJECTS}
            ;;
        t) cd ${MY_PERSONAL_PROJECTS}test
            ;;
        td) cd ${MY_PERSONAL_PROJECTS}test/cli/DSPHP
            ;;
        dw) cd ${MY_HOME_FOLDER}Downloads
            ;;
        dc) cd ${MY_HOME_FOLDER}Documents
            ;;
        gm) cd ${MY_GO_PROJECTS}src/github.com/razorpay/mozart
            ;;
        mg) cd ${MY_GO_PROJECTS}src/my
            ;;
        *)  'cdsHelp'
            ;;
    esac
}

if typeset -f cdsHelp> /dev/null; then
  unfunction cdsHelp
fi
cdsHelp(){
    echo "Looks like you need help, mate!"
    echo "c = '${MY_WORK_PROJECTS}connectv2'"
    echo "a = '${MY_WORK_PROJECTS}araas'"
    echo "i = '${MY_WORK_PROJECTS}integrations'"
    echo "k = '${MY_WORK_PROJECTS}cue'"
    echo "m = '${MY_WORK_PROJECTS}my'"
    echo "l = '${MY_WORK_PROJECTS}"
    echo "h = '${MY_PERSONAL_PROJECTS}'"
    echo "t = '${MY_PERSONAL_PROJECTS}test'"
    echo "dw = '/~Downloads'"
    echo "dc = '/~Documents'"
    echo "gm = '${MY_GO_PROJECTS}src/github.com/razorpay/mozart'"
    echo "mg = '${MY_GO_PROJECTS}src/my'"
}
