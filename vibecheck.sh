#!/bin/bash

F_VDOUBLE="\033#6"
str=" ##VIBECHECK## "
vibe=$(date -d "${date}" +"%s")
i=0 
printf "CHECKING VIBE:  \n"
sleep 2.5; #emulate waiting
while true;do echo -ne "$str\r";i=$(($i+1)); str="$str ."; 
	if (($(($i % 10)) == 0 )) 
	then 
		str="$str $i%"
		
	else
		str="$str ."
	fi
	if (($i == 95))
       	then
		break;
	fi
	sleep .1;clear;done & 
sleep 10; 
printf "100%%\n" #does not print to 100 so manual print
printf "\n"
echo -ne `date`
printf "\n"
if (( $vibe % 3 == 0 )) #more accurate than astrology
then
	printf "\n${F_VDOUBLE}~ ~ VIBING ~ ~\n\n ᕙ(* •̀ ᗜ •́ *)ᕗ\n\n"
else
	printf "\n${F_VDOUBLE}~ ~ NOT VIBINING ~ ~\n\n ᕦ༼ •́ ‸ •̀ ༽ᕤ\n\n"
fi
