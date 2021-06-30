#!/data/data/com.termux/files/usr/bin/bash
#Author prince kumar.....
#Date 29 jun 2021
#Make a banne function....
banner(){
	echo -e "\e[35;1m"
	echo -e "
_________   _        _______  _______ 
\\__   __/  ( \\      (  ___  )(  ____ \\
   ) (     | (      | (   ) || (    \/
   | |     | |      | |   | || |      
   | |     | |      | |   | || | ____ 
   | |     | |      | |   | || | \_  )
   | |     | (____/\| (___) || (___) |
   )_(_____(_______/(_______)(_______)
     (_____) \e[32;1m ✍ Made by prince 🙏
     "
}
banner
chmod +x T_log.sh
cp T_log.sh ~
cp -R .Tlog ~
cd ~
if [[ -d .T_log ]];then
	rm -rf .T_log
	mkdir .T_log
else
	mkdir .T_log
fi
echo -e "🔒 Enter the username: "
read userName
echo "${userName}" > .T_log/username

echo -e "🔑\e[35;1mEnter the password: "
read userPass
echo "${userPass}" > .T_log/userpass
cd 
cd ..
cd usr/etc
echo './T_log.sh' >> bash.bashrc
echo ""
echo -e "🔐 \e[0;1mUsername and password set sucessfully."

