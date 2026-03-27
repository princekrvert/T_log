#!/usr/bin/env bash
#Author prince kumar.....
#Date 29 jun 2021
#Make a banne function....
# make a fucntion to check the requirements
req(){
  # check for the gum 
  command -v gum || pkg install gum 
  # now check for the neofetch 
  commnad -v neofetch || {pkg install neofetch} 

}
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
req
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
username=$(gum input --placeholder "Enter a username: ")
# hash the username using sha256sum
username_hash=$(echo $username | sha256sum)
echo "${username_hash}" > .T_log/username
userPass=$(gum input --placeholder "Enter a password: ")
userPass_hash=$(echo $userPass | sha256sum)
echo "${userPass_hash}" > .T_log/userpass

cd ~
# first check for the shell if it is bash or Zsh 
if [[ $SHELL == "/data/data/com.termux/files/usr/bin/zsh" ]];then
{
  # insert the line at the top of file 
  sed -i '1i exec ./Tlog.sh ' .zshrc

}
else{
  cd ..
cd usr/etc
echo 'exec ./T_log.sh' >> bash.bashrc
echo ""
}
fi

echo -e "🔐 \e[0;1mUsername and password set sucessfully."

