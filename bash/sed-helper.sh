
replace() {
	toFind=$1
	replace=$2
	inFile=$3

	sed -i "s/${toFind}/${replace}/g"	$inFile
}

replaceCases() {
	toFind=$1
	replace=$2
	inFile=$3

	sed -i "s/${toFind}/${replace}/g"	$inFile
	sed -i "s/${toFind^}/${replace^}/g" $inFile
	sed -i "s/${toFind^^}/${replace^^}/g" $inFile
}

appendString() {
	stringToAppend=$1
	file=$2

	sed -i "$ a ${stringToAppend}" ${file}
}

prependString() {
	stringToAppend=$1
	file=$2

	sed -i "1 i ${stringToAppend}" ${file}
}


insertStringAtLine() {
	stringToInsert=$1
	file=$2
	line=$3
	
	sed -i "${line} i ${stringToInsert}" ${file}
}

insertStringBeforePattern() {
	stringToInsert=$1
	file=$2
	stringToMatch=$3

	sed -i "/${stringToMatch}/i ${stringToInsert}" ${file}
}

insertFileBeforePattern() {
	fileContents=$1
	file=$2
	stringToMatch=$3

	sed -i -e "/${stringToMatch}/r ${fileContents}" ${file}
}

insertFileAfterPattern() {
	fileContents=$1
	file=$2
	stringToMatch=$3

	sed -i "/${stringToMatch}/r ${fileContents}" ${file}
}

sedhelp() {
	echo "
	method: replace
		description: replaces all contents of {find} with {replace} in {file}
		paramaters: {find} {replace} {file}

	method: replaceCases
		description: replaces all contents of {find} and {Find} and {FIND}
			     with the matches cases of {replace}
		paramaters: {find} {replace} {file}

	method: appendString
		description: appends a string to a file
		paramaters: {stringToAppend} {file}

	method: prependString
		description: places string on first line of file
		paramaters: {stringToPrepend} {file}

	method: insertStringAtLine
		description: places {string} before {lineNumber} in {file}
		paramaters: {string} {file} {lineNumber}

	method: insertStringBeforePattern
		description: places {string} before {regex} in {file}
		paramaters: {string} {file} {regex}
	
	method: insertStringAfterPattern
		description: places {string} after {regex} in {file}
		paramaters: {string} {file} {regex}

	method: insertFileAfterPattern
		description: places contents of {fileToBeInserted} in {file} after {regex}
		paramaters: {fileToBeInserted} {file} {regex}

	method: insertFileBeforePattern
		description: places contents of {fileToBeInserted} in {file} before {regex}
		paramaters: {fileToBeInserted} {file} {regex}
	
	"
}
