#!/usr/bin/env zsh
if typeset -f cds> /dev/null; then
  unfunction cds
fi
cds(){
    case $1 in
        w) cd ${MY_WORK_PROJECTS}
            ;;
        wr) cd ${MY_WORK_PROJECTS}razorpay.com
            ;;
        wa) cd ${MY_WORK_PROJECTS}api
            ;;
        wd) cd ${MY_WORK_PROJECTS}dashboard
            ;;
        wh) cd ${MY_WORK_PROJECTS}hulk
            ;;
        wm) cd ${MY_WORK_PROJECTS}mytools
            ;;
        s) cd ${MY_SELF_PROJECTS}
            ;;
        st) cd ${MY_SELF_PROJECTS}test
            ;;
        std) cd ${MY_SELF_PROJECTS}test/cli/DSPHP
            ;;
        dw) cd ${MY_HOME_FOLDER}Downloads
            ;;
        dc) cd ${MY_HOME_FOLDER}Documents
            ;;
        g) cd ${MY_GO_PROJECTS}/src
            ;;
        gr) cd ${MY_GO_PROJECTS}/src/github.com/razorpay
            ;;
        grm) cd ${MY_GO_PROJECTS}src/github.com/razorpay/mozart
            ;;
        ga) cd ${MY_GO_PROJECTS}src/github.com/anwerj
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
    echo "w = '${MY_WORK_PROJECTS}'"
    echo "wr = '${MY_WORK_PROJECTS}razoray.com'"
    echo "wa = '${MY_WORK_PROJECTS}api'"
    echo "wd = '${MY_WORK_PROJECTS}dashboard'"
    echo "wh = '${MY_WORK_PROJECTS}hulk'"
    echo "wm = '${MY_WORK_PROJECTS}mytools"
    echo "s = '${MY_SELF_PROJECTS}'"
    echo "st = '${MY_SELF_PROJECTS}test'"
    echo "std = '${MY_SELF_PROJECTS}test/cli/DSPHP'"
    echo "dw = '/~Downloads'"
    echo "dc = '/~Documents'"
    echo "g = '${MY_GO_PROJECTS}/src'"
    echo "gr = '${MY_GO_PROJECTS}src/github.com/razorpay'"
    echo "grm = '${MY_GO_PROJECTS}src/github.com/razorpay/mozart'"
    echo "ga = '${MY_GO_PROJECTS}src/github.com/anwerj'"
}
