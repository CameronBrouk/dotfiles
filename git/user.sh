# Set Global User
setGlobalUserInformation() {
	echo "What Is Your Github Username?"
	read username
	git config --global user.name ${username}

	echo "What is your Git Email?"
	read email
	git config --global user.email ${email}

	echo "What is Your Git Password?"
	read password
	git config --global user.password ${password}

}

setProjectUserInformation() {
	echo "What Is Your Github Username?"
	read username
	git config user.name ${username}

	echo "What is your Git Email?"
	read email
	git config user.email ${email}

	echo "What is Your Git Password?"
	read password
	git config user.password ${password}

}
