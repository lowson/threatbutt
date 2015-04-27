#!/bin/bash  

spin[0]="-"
spin[1]="\\"
spin[2]="|"
spin[3]="/"

function spin() {
	echo -n "[$1] ${spin[0]}"
	c=0
	while [ $c -lt 6 ]
	do
	  for i in "${spin[@]}"
	  do
			echo -ne "\b$i"
			sleep 0.1
	  done
	  c=$(($c+1))
	done
	echo
} 

answer[0]="It is certain"
answer[1]="It is decidedly so"
answer[2]="Without a doubt"
answer[3]="Yes definitely"
answer[4]="You may rely on it"
answer[5]="As I see it, yes"
answer[6]="Most likely"
answer[7]="Outlook good"
answer[8]="Yes"
answer[9]="Signs point to yes"
answer[10]="Reply hazy try again"
answer[11]="Ask again later"
answer[12]="Better not tell you now"
answer[13]="Cannot predict now"
answer[14]="Concentrate and ask again"
answer[15]="Don't count on it"
answer[16]="My reply is no"
answer[17]="My sources say no"
answer[18]="Outlook not so good"
answer[19]="Very doubtful"

spin "Connecting to ThreatButt Synergy Global Defense platform..." 
spin "Opening Secure channel with TLS 1.2 using TLS_RSA_WITH_AES_256_CBC_SHA..."
echo "[Connected to ThreatButt API]" 
sleep 1
echo "[Welcome to the ThreatButt Synergy Global Defense platform]"  
sleep 1
spin "Checking system for security answers..."
echo "[Theatbutt Response: ${answer[RANDOM%${#answer[@]}]}" $']'
