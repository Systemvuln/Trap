#!/bin/bash
#coding
bi='\033[34;1m' #biru
i='\033[32;1m' #ijo
pur='\033[35;1m' #purple
cy='\033[36;1m' #cyan
me='\033[31;1m' #merah
pu='\033[37;1m' #putih
ku='\033[33;1m' #kuning
#mrhackpro
clear
trap ctrl_c INT
ctrl_c(){
clear
sl
ctrl_c
}
ulang='y'
while [ $ulang = 'y' ]; do
malware(){
read -p '[Pilih nomor] : ' pil;
if [ $pil = '1' ] || [ $pil = '01' ]; then
	clear
	echo  $i'MALWARE FILE'
	sleep 2
	clear
	cd jsigs
	python2 file.py
elif [ $pil = '2' ] || [ $pil = '02' ]; then
	clear
	echo $i'MALWARE PHOTO'
	sleep 2
	clear
	figlet -f pagga 'BELUM DI ISI BRO'
	sleep 2
	clear
	cd jsigs
	python2 photo.py
elif [ $pil = '3' ] || [ $pil = '03' ]; then
	clear
	echo $i'MALWARE FOLDER'
	sleep 2
	clear
	cd jsigs
	python2 folder.py

fi
}
lanjut(){
read -p'(y/n) = ' pol;
if [ $pol = 'y' ] || [ $pol = 'Y' ]; then
	echo
	echo
	echo $i'========================'
	sleep 0.1
	echo '1. MALWARE FILE'
	sleep 0.1
	echo $i'========================='
	sleep 0.1
	echo '2. MALWARE PHOTO'
	sleep 0.1
	echo $i'========================'
	sleep 0.1
	echo '3. MALWARE FOLDER'
	sleep 0.1
	echo $i'========================'
	sleep 0.1
	echo
	malware
else
	clear
	figlet -f pagga 'Mau Kemana' | lolcat
fi
}
cd jsigs
python2 photo.py
echo $cy'(+)'$me'════════════════════'$cy'(+)'
sleep 0.1
echo $me' |'$i'      Mr_Hackpro'$me'      |'
sleep 0.1
echo $me' |'$ku'   ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'$me'   |'
sleep 0.1
echo $me' |     SYSTEMVULN       |'
echo $cy'(+)'$me'════════════════════'$cy'(+)'
sleep 0.1
echo
echo $cy'══════════════════════════════'
echo
echo $i'TOOLS MALWARE TARGET'
sleep 0.1
echo 'JANGAN DI SALAH GUNAKAN YA BRO'
sleep 0.1
echo
echo 'INGIN MELANJUTKAN ?'
sleep 0.1
echo
lanjut

done
