. ~/.settings/bash/scripts/pretty-echo.sh
. ~/.settings/bash/scripts/select-option.sh
. ~/.settings/bash/scripts/multi-select.sh

PS3="Your Input: "

# WHAT IT DOES:
# 	this method asks takes a input '1' or '2'
# 	if the input is '2' it closes the current program
# HOW TO USE:
# 	use echo to question user, then run the yes or not method
# 	example: echo "are you in the correct directory?" && yesOrNo
# EXAMPLE USAGE:
# 	echo "are you in the root directory of your module? ex: src/app/user" && yesOrNO 'moduleName'
yesOrNo() {
	set -e

	echoImportant "type 1 or 2"
	answers=("yes" "no")
	select answer in "${answers[@]}"
	do
		case $REPLY in
			1) break;;
			2) exit 1;;
		esac
	done


}
checkForCorrectDirectory() {
	set -e

	correctDirectory=$1

	echoQuestionUser "Are you in the $1 directory?"
	echoImportant "type 1 or 2"
	answers=("yes" "no")
	select answer in "${answers[@]}"
	do
		case $REPLY in
			1)
				# echo "yes"
				break
				;;
			2)
				# echo "no"
				exit 1
				;;
		esac
	done

}

chooseAColor() {
	# echoImportant "Choose a Material Design Palette Color(input the number associated with the color)"
	colors=("amber" "blue" "red" "purple" "pink" "orange" "lime" "light-green" "light-blue" "indigo" "green" "deep-purple" "deep-orange" "cyan")
	select color in "${colors[@]}"
	do
		case $REPLY in
			1) newColor=$color && break;;
			2) newColor=$color && break;;
			3) newColor=$color && break;;
			4) newColor=$color && break;;
			5) newColor=$color && break;;
			6) newColor=$color && break;;
			7) newColor=$color && break;;
			8) newColor=$color && break;;
			9) newColor=$color && break;;
			10) newColor=$color && break;;
			11) newColor=$color && break;;
			12) newColor=$color && break;;
			13) newColor=$color && break;;
		esac
	done
}



chooseAType() {
	echoQuestionUser "What is the data type of this attribute?"
	types=("string" "number" "object" "any" "boolean")
	select type in "${types[@]}"
	do
		case $REPLY in
			0) type=string && break;;
			1) type=number && break;;
			2) type=object && break;;
			3) type=any && break;;
			4) type=boolean && break;;
		esac
	done
}



chooseAFormField() {
	echoQuestionUser "What kind of formField would you like this attribute to have?"
	fields=("input" "select" "checkbox" "radio" "textarea" "slidetoggle" "datepicker" "autocomplete")
	select field in "${fields[@]}"
	do
		case $REPLY in
			1) formField=input && break;;
			2) formField=select && break;;
			3) formField=checkbox && break;;
			4) formField=radio && break;;
			5) formField=textarea && break;;
			6) formField=slidetoggle && break;;
			7) formField=datepicker && break;;
			8) formField=autoComplete && break;;
		esac
	done
}

createDataShape() {
	# PS3="Do you want to add another attribute to your data? (y/n)"
	echoQuestionUser "Do you want to add an attribute to your data? (y/n)"
	checks=("yes" "no")

	select check in "${checks[@]}"
	do
		case $REPLY in
			y)
				echo " "
				echoQuestionUser "What will be the name of your attribute?"
				printf "Your Input: " && read name
				echo " "
				chooseAType
				echo " "
				chooseAFormField
				echo " "
				echoSuccess "You have a ${formField} form for your ${type} and your color is ${newColor}"
				echoUpdateFile "helloCreateForm.component.ts"
				echoUpdateFile "helloCreateForm.component.html"
				echoUpdateFile "hello.model.ts"
				echoQuestionUser "Do you want to add another attribute to your data? (y/n)"
				;;
			n) echo "Your document looks like this:
			"
			break;;
		esac
	done
}
# createDataShape
# TESTS
# checkForCorrectDirectory "scripts"
# chooseAColor
# chooseAType
# chooseAFormField
# echo "hello"

# This Method utilizes the 'userChoice' method in rbc-scaffolding/scripts/select-option.sh
# It gives the user the material design color options
# When chosen, it places their answer in a variable named $newColor
# EXAMPLE USAGE
# 	chooseAColor
# 	echo $newColor
# chooseAColor() {
# 	userChoice=$(sind "Choose a Material Design Color Pallete (Up/Down, Enter to choose)" "amber" "blue" "red" "purple" "pink" "orange" "lime" "light-green" "light-blue" "indigo" "green" "deep-purple")
# 	case "$userChoice" in
# 		0) newColor="amber";;
# 		1) newColor="blue";;
# 		2) newColor="red";;
# 		3) newColor="purple";;
# 		4) newColor="pink";;
# 		5) newColor="orange";;
# 		6) newColor="lime";;
# 		7) newColor="light-green";;
# 		8) newColor="light-blue";;
# 		9) newColor="indigo";;
# 		10) newColor="green";;
# 		11) newColor="deep-purple";;
# 		12) newColor="deep-orange";;
# 		13) newColor="cyan";;
# 		14) echo "selected Cancel";;
# 	esac
# }

# EXAMPLE USAGE
# 	chooseAType
# 	echo $type
# chooseAType() {
# 	clear

# 	echo "What Will be the name of this attribute?"
# 	read attributeName


# 	userChoice=$(sind "Choose a type for your attribute (Up/Down, Enter to choose)" "   string" "   number" "   object" "   any" "   boolean")
# 	case "$userChoice" in
# 		0) type="string" && echo "Your attribute will be a string";;
# 		1) type="number" && echo "Your attribute will be a number";;
# 		2) type="object" && echo "Your attribute will be an object";;
# 		3) type="any" && echo "Your attribute will be any";;
# 		4) type="boolean" && echo "Your attribute will be a boolean";;
# 	esac


# 	echo "What kind of formfield will this attribute have?"
# 	userChoice=$(sind "What kind of formfield will be used? (Up/Down, Enter to choose)" "  none" "   input" "   select" "   checkbox" "   radio" "   slidetoggle" "   textarea" "   autocomplete")
# 	case "$userChoice" in
# 		0) field="none";;
# 		1) field="input";;
# 		2) field="select";;
# 		3) field="checkbox";;
# 		4) field="radio";;
# 		5) field="slidetoggle";;
# 		6) field="textarea";;
# 		7) field="autocomplete";;
# 	esac

# 	echoUpdateFile "fuck.models.ts"
# 	echoUpdateFile "fuck.createForm.ts"
# 	echoUpdateFile "fuck.updateForm.ts"

# 	echo "are you finished creating the model?"
# }

# chooseAType

# requiredInformation:
# 	nameOfAttribute
# 	typeOfAttribute
# 	formField
# defineDataShape() {
# 	modelFile=$1
# 	echo "Okay, the first step is to"
	# echo "type the name of our attribute and it's type, just like you would in a TypeScript Interface.
	# example:
	# name: string"

	# read attribute
	# appendStringOneLineBeforeLast "${attribute}" $modelFile
	# echo "${attribute}"
# }

# chooseForms() {
# 	prompt_for_multiselect formFields "input;select;checkbox;radio;textarea;autocomplete;datepicker;slidetoggle"

# }

# defineDataShape
# echo $attribute
