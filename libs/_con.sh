source ${MY_BASH_DIR}/data/_serverlist.sh

con(){

    local _con_user=$_def_con_user
    local _con_pem=$_def_con_pem
    local _con_serverip=$_def_con_serverip

	case $4 in
        (*[![:blank:]]*) _con_serverip=$4
    esac

	case $3 in
        (*[![:blank:]]*) _con_user=$3
    esac

	case $2 in
        (*[![:blank:]]*) _con_pem=$2
    esac

    case $1 in
        (*[![:blank:]]*)
                case $1 in
                    i)
                        echo "ssh -i ${MY_HOME_FOLDER}pem/${_con_pem}.pem ${_con_user}@${_con_serverip}"
                        ssh -i ${MY_HOME_FOLDER}pem/${_con_pem}.pem ${_con_user}@${_con_serverip}
                        ;;
                    *)
                        echo "${_def_con_serverlist[${1}]}"
                        ${_def_con_serverlist[${1}]}
                        ;;
                esac
            ;;
        (*) conList
            ;;
    esac

}
conList(){
    for _con_index in "${!_def_con_serverlist[@]}";
    do
        echo "${_con_index}             ${_def_con_serverlist[${_con_index}]}"
    done;
}
