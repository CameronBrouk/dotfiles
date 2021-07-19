cf="\\033[0m"
red="\\033[0;31m"
green="\\033[0;32m"
yellow="\\033[0;33m"
purple="\\033[0;35m"
blue="\\033[0;34m"
black="\\033[0;30m"
magenta="\\033[0;35m"
cyan="\\033[0;36m"
lightGrey="\\033[0;37m"
darkGrey="\\033[0;90m"
lightGreen="\\033[0;92m"
lightYellow="\\033[0;93m"
lightBlue="\\033[0;94m"
lightMagenta="\\033[0;95m"
lightCyan="\\033[0;96m"
white="\\033[0;97m"

echoQuestionUser() {
	message=$1
	echo -e "===>  ${yellow}$message${cf}"
}

echoImportant() {
	message=$1
	echo -e "===> ${cyan}$message${cf}"
}

echoError() {
  message=$1
  echo -e "===> [${red}ERROR${cf}]: $message"
}

echoSuccess() {
  message=$1
  echo -e "===> [${green}SUCCESS${cf}]: $message"
}

echoWarning() {
  message=$1
  echo -e "===> [${yellow}WARNING${cf}]: $message"
}

echoChangedDirectory() {
	currentFolder=${PWD##*/}
  	echo -e "${yellow}CHANGED DIRECTORY >> ${currentFolder}${cf}"
}

echoCreateFile() {
	fileName=$1
	filePath=$(pwd)
	currentFolder=${PWD##*/}
	createdFile="${currentFolder}/${fileName}"
  	echo -e "${cyan}CREATE${cf} ${createdFile}"
}

echoCreateFolder() {
	folderName=$1
	filePath=$(pwd)
	currentFolder=${PWD##*/}
	createdFolder="${folderName}"
  	echo -e "${purple}CREATE FOLDER${cf} ${createdFolder}"
}

echoUpdateFile() {
	fileName=$1
	message=$1
	change=$2
	place=$3
	currentFolder=${PWD##*/}
	createdFile="${currentFolder}/${fileName}"

  	echo -e "${lightMagenta}UPDATE${cf} ${createdFile}"
}

echoFinishedAction() {
	action=$1
	currentFolder=${PWD##*/}

	echo -e "===> [${green}COMPLETED in /${currentFolder}${cf}] ${action}

	"
}

echoStartingAction() {
	action=$1
	currentFolder=${PWD##*/}

	echo -e "===> ${cf}[${green}START ACTION${cf}] ${green}${action} ${cf} =================="
}

echoFailedAction() {
	action=$1

	echo -e " ======================== [${red}FAILED${cf}] ${action} ============================="
}
