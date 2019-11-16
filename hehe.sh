Bacod 

b="\033[34;1m"
 p="\033[39;1m"
  k="\033[33;1m"
   m="\033[31;1m"
    h="\033[32;1m"
     c="\033[35;1m"
      pu="\033[36;1m"
       x="\033[30;1m"
        o="\033[0m"
        
        load(){
        printf "${p}[${c}•${p}]${pu}Sedang Login${h}"
        sleep 0.5
        printf "."
        sleep 0.5
        printf "."
        sleep 0.5
        printf "."
        sleep 0.5
        printf ".\n"
        }
        
        load1(){
        printf "${p}[${c}•${p}]${pu}Mengirim Otp${h}"
        sleep 0.5
        printf "."
        sleep 0.5
        printf "."
        sleep 0.5
        printf "."
        sleep 0.5
        printf ".\n"
        }

function banner(){
clear							
printf "${p}             [${m}'${p}] ${pu}


    ____            _____     
   / __ \__  ______/ /   |____
  / /_/ / / / / __  / /| /_  /
 / _, _/ /_/ / /_/ / ___ |/ /_
/_/ |_|\__,_/\__,_/_/  |_/___/



${p}\n" 
}
banner
function otp (){
    printf "\n ${k}Eks${m}:${c}(${h}628${pu}xxxxxx${c})\n"
    printf "${b}################################# \n"
    printf "${b}${p}NOMOR XL${m}:${pu} " num
    read num;
    printf "${b}#################################\n"    
    load1
    curl -s "https://www.jagoanssh.com/tembak/getOtp.php" -c .null -d "msisdn=$num" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > /dev/null 2&>1 >> .d
    get=$(cat .d)
    
    if [[ $get =~ "Password dikirim ke $num Ngentot" ]];then
    printf "${p}[${h}√${p}]${h}OTP Berhasil Terkirim ke ${p}$num"
    fi
    
    rm 1
    rm -rf .d
    login
}

function login (){
    printf "\n${b}╔════════════════════════╗ \n"
    printf "${b}║${p}CODE OTP${m}:${pu} " otp
    read otp;
    printf "${b}╚════════════════════════╝\n"    
    load
    curl -s "https://www.jagoanssh.com/tembak/getLogin.php" -c .null -d "msisdn=$num&passwd=$otp" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .login
    rm -rf .login
    printf "\n"
    index

}

function index (){   

    curl -s "https://www.jagoanssh.com/tembak/index.php" -b .null --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .index
	sed -n "259p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m01\033[31;1m]\033[39;1m"$1,$2,$3,"\033[35;1m"$4,"\033[32;1m"$5'}
	sed -n "260p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m02\033[31;1m]\033[39;1m"$1,$2,$3,"\033[35;1m"$4,$5,$6,"\033[32;1m",$7'}
	sed -n "261p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m03\033[31;1m]\033[39;1m"$1,$2,$3,"\033[35;1m"$4,$5,"\033[32;1m"$6'}
	sed -n "262p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m04\033[31;1m]\033[39;1m"$1,$2,$3,"\033[35;1m"$4,$5,"\033[32;1m"$6'}
	sed -n "263p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m05\033[31;1m]\033[39;1m"$1,$2,$3,"\033[35;1m"$4,$5,"\033[32;1m"$6'}
	sed -n "264p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m06\033[31;1m]\033[39;1m"$1,$2,$3,"\033[35;1m"$4,$5,"\033[32;1m"$6'}
	sed -n "265p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m07\033[31;1m]\033[39;1m"$1,$2,$3,$4,"\033[35;1m"$5,$6,"\033[32;1m"$7'}
	sed -n "285p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m08\033[31;1m]\033[39;1m"$1,"\033[35;1m"$2,$3,"\033[32;1m"$4'}
	sed -n "286p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m09\033[31;1m]\033[39;1m"$1,"\033[35;1m"$2,$3,"\033[32;1m"$4'}
	sed -n "287p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m10\033[31;1m]\033[39;1m"$1,"\033[35;1m"$2,"\033[32;1m"$3'}
	sed -n "288p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m11\033[31;1m]\033[39;1m"$1,$2,"\033[35;1m"$3,"\033[32;1m"$4,$5'}
	sed -n "289p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m12\033[31;1m]\033[39;1m"$1,$2,"\033[35;1m"$3,"\033[32;1m"$4'}
	sed -n "290p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m13\033[31;1m]\033[39;1m"$1,$2,"\033[35;1m"$3,"\033[32;1m"$4'}
	sed -n "291p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m14\033[31;1m]\033[39;1m"$1,$2,"\033[35;1m"$3,$4,"\033[32;1m"$5,$6'}
	sed -n "292p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m15\033[31;1m]\033[39;1m"$1,$2,"\033[35;1m"$3,$4,"\033[32;1m"$5,$6'}
	sed -n "293p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m16\033[31;1m]\033[39;1m"$1,$2,"\033[35;1m"$3,$4,"\033[32;1m"$5,$6'}
	sed -n "294p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m17\033[31;1m]\033[39;1m"$1,$2,"\033[35;1m"$3,$4,"\033[32;1m"$5,$6'}
	sed -n "295p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m18\033[31;1m]\033[39;1m"$1,$2,"\033[35;1m"$3,$4,"\033[32;1m"$5,$6'}
	sed -n "296p" .index | tr "><" "\n" | sed -n "3p" | awk {'print "\033[31;1m[\033[32;1m19\033[31;1m]\033[39;1m"$1,$2,"\033[35;1m"$3,$4,"\033[32;1m"$5,$6'}
	printf "${p}[${h}00${p}]${m}Keluar\n"
	rm -rf .index
	printf "\n${p}[${h}•${p}]PILIH NO${m}:${p} " paket
	read paket;
	if [[ $paket = 1 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=1" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 2 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=22" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 3 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=25" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 4 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=26" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 5 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=27" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 6 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=28" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 7 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=29" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 8 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=30" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 9 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=23" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 10 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=24" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 11 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=31" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 12 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=32" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 13 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=33" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 14 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=34" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 15 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=35" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 16 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=36" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 17 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=37" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 18 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=38" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 19 ]];then
	curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=39" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36" > .x
	printf "${p}[${h}√${p}]Sedang di proses..\n"
	rm -rf .x
	sleep 2
	banner
	index
	
	elif [[ $paket = 0 ]] || [[ $paket = 00 ]];then
	clear
	sleep 1
	printf "\n\n${p}     *_* Thanks You\n"
	printf "\n${p}[${h}•${p}]Jangan lupa subscribe channel youtube andro 45\n"
	printf "${p}[${h}•${p}]Join ke channel telegram\n"
	printf "${p}[${h}•${p}]Link: https://t.me/config_geratis\n\n"
	
	else 
	printf "\n${h}          ~ ~  ┌${p1}∩${h}┐${k}(${m}◣${p1}_${m}◢${k})${h}┌${p1}∩${h}┐  ~ ~\n"
	printf "          ${p}[${m}!${p}]${m} pilihan salah ${p}[${m}!${p}]${k}\n"
	sleep 1
	banner
	index
	fi
	
	module(){
    grep -v "<\!---.*"  .index >  .index.log
    rm -rf .index
    numcount=$( sed -n "260,279p" .index.log | grep -a "value=" | cut -d ">" -f2 | cut -d "<" -f1 | wc -l )

    for (( loopline = 1; loopline <= $numcount; loopline++ ))
    do
        packet=$(sed -n "260,279p" .index.log | grep -a "value=" | cut -d ">" -f2 | cut -d "<" -f1 | sed -n "$loopline p")
        printf "[$loopline] $packet\n"
    done
    rm -rf .index

    printf "\n"
    read -p $"Select : " npacket
    
    spacket=$(sed -n "260, 279p" .index.log | grep -o "\".*" | cut -d "\"" -f2 | sed -n "$npacket p")
    sleep 1
    
    rm -rf .index.log
    curl -s "https://www.jagoanssh.com/tembak/tembak.php" -b .null -d "reg=$spacket" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36"

  	}
}

otp
rm -rf .null