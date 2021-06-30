#!/data/data/com.termux/files/usr/bin/bash
#Author prince kumar
#Date 29 jan 2021
#Setup some colour pattern-----
r="\e[31;1m"
g="\e[32;1m"
y="\e[33;1m"

#Backup function.....
#Trap the user signal 
trap userSignal SIGINT
trap userSignal SIGTSTP
userSignal(){
	echo -e "👓\e[37;1m Invalid opretion Bro.."
	superUser
}
autoUpdate(){
	git pull https://github.com/princekrvert/T_log.git > /dev/null 2>&1 & sleep 0.5
	echo -e "${r} checking for update.."
	clear
}


#Make a function validate... the user and pass-----
#Make a function to superuser
superUser(){
echo -ne "\e[35;1m Enter the super code: "
read superCode
sSC=$(cat .Tlog/supercode)
if [[ ${superCode} == ${sSC} ]];then
	rm -rf .T_log/username
	rm -rf .T_log/userpass
	echo -ne "🔒 ${r}Enter the new username: "
	read newUserName
	echo "${newUserName}" > .T_log/username
	echo -ne "🔑 ${r}Enter the new userpassword: "
	read newUserPass
	echo "${newUserPass}" > .T_log/userpass
	echo " "
	echo -e "\e[37;1m 🚪 New username a password set."
	exit 0
else
	echo " Visit this link for pass code..."
	echo "🔗 https://github.com/princekrvert/T_log/blob/main/.Tlog/supercode"
	sleep 3
	superUser
	exit 1
	exit 1
	exit 1
	clear
	superUser
fi

}

userPass(){
	if [[ -d .T_log ]];then
		echo -ne "🔒 ${r}Enter the username: "
		read userName
		sUN=$(cat .T_log/username)
		if [[ ${userName} == ${sUN}  ]];then
			echo -ne "🔑 ${r}Enter the password: "
			read userPass
			sUP=$(cat .T_log/userpass)
			if [[ ${userPass} == ${sUP}  ]];then
				echo -e "\e[0;1m 👽 Login Sucessfully..."
			else
				echo " Login failed.."
				exit
				exit 1
				exit
				superUser

			fi

		else
			echo " 🚫Invalid username or password"
			superUser
			exit 1
			exit 0
			exit 0
		fi
	else
		echo -e "\e[36;1m 🔐 Please setup userid and pass"
	fi


}
userPass

