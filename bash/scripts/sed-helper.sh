#!/bin/bash
source ~/rbc-scaffolding/scripts/pretty-echo.sh
source ~/rbc-scaffolding/scripts/user-input.sh

replaceRecursively() {
	#!/bin/bash
	toFind=$1
	replacement=$2

	find . -type f -exec sed -i "s/${toFind}/${replacement}/g" {} +
}

replaceCasesRecursively() {
	#!/bin/bash
	toFind=$1
	replacement=$2

	find . -type f -exec sed -i "s/${toFind}/${replacement}/g" {} +
	find . -type f -exec sed -i "s/${toFind^}/${replacement^}/g" {} +
	find . -type f -exec sed -i "s/${toFind^^}/${replacement^^}/g" {} +
}

replaceRecursivelyWithCheck() {
	#!/bin/bash
	toFind=$1
	replacement=$2
	replacementNumber=$(grep -rn ${toFind} . | wc -l)
	filesUpdated=$(grep -rnl ${toFind} . )

	echoImportant "There are ${replacementNumber} instances that will be replaced"
	echoWarning "These are the files that will be changed:"
	echo $filesUpdated

	echoQuestionUser "Would You like To continue?"
	yesOrNo

	find . -type f -exec sed -i "s/${toFind}/${replacement}/g" {} +
}

replace() {
#!/bin/bash
	toFind=$1
	replace=$2
	inFile=$3

	sed -i "s/${toFind}/${replace}/g"	$inFile
}

replaceCases() {
#!/bin/bash
	toFind=$1
	replace=$2
	inFile=$3

	sed -i "s/${toFind}/${replace}/g" $inFile
	sed -i "s/${toFind^}/${replace^}/g" $inFile
	sed -i "s/${toFind^^}/${replace^^}/g" $inFile
}

appendString() {
	stringToAppend=$1
	file=$2

	sed -i "$ a ${stringToAppend}" ${file}
}

appendStringOneLineBeforeLast() {
	stringToAppend=$1
	file=$2

	sed -i "$ i ${stringToAppend}" ${file}
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

deleteLinesThatMatch() {
	file=$1
	pattern=$2

	sed -i "/${pattern}/d" ${file}
}

deleteLinesBetweenPatterns() {
	file=$1
	patternOne=$2
	patternTwo=$3

	sed -i "/${patternOne}/,/${patternTwo}/{/${patternOne}/!{/${patternTwo}/!d;};}" ${file}
}

sedhelp() {
	echo "
	method: deleteLinesBetweenPatterns
		description: delete all lines in {file} between {patternOne} and {patternTwo}
		paramaters: {file} {patternOne} {patternTwo}

	method: deleteLinesThatMatch
		description: deletes all lines in {file} that contain {pattern}
		paramaters: {file} {pattern}

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
