#!/bin/bash

CLIP_FILE=clipfile.txt;										#File used to store changing string values within conditional and loop statements
COUNTER_FILE=counter.txt;									#File used to store status of command execution
echo 2 > $COUNTER_FILE;										#Initial Status is 2 which signify successful program execution

															#Resetting variables to process next string
x="";
wd="";
echo "voice assistant started --panky" > $CLIP_FILE;

origclip=$1													#Taking string as input
origclip=${origclip,,}										#Converting string to lower case

for wd in $origclip; do										#Checking string word by word

echo 0 > $COUNTER_FILE;
clipboard=$x$wd;

# Folder Opening Commands

	if [[ "$clipboard" == *open*document* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Documents;
	clipboard=${clipboard/*document/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *document*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Documents;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *open*download* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Downloads;
	clipboard=${clipboard/*download/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *download*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Downloads;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *open*picture* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Pictures;
	clipboard=${clipboard/*picture/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *picture*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Pictures;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *open*home* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/;
	clipboard=${clipboard/*home/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *home*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *open*root* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open /;
	clipboard=${clipboard/*root/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *root*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open /;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *open*video* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Videos;
	clipboard=${clipboard/*video/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *video*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Videos;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	fi &

# Run Programs Commands

	if [[ "$clipboard" == *open*monitor* ]];
	then
	echo 1 > $COUNTER_FILE;
	gnome-system-monitor;
	clipboard=${clipboard/*monitor/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *monitor*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	gnome-system-monitor;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *task*manager* ]];
	then
	echo 1 > $COUNTER_FILE;
	gnome-system-monitor;
	clipboard=${clipboard/*manager/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *open*calculator* ]];
	then
	echo 1 > $COUNTER_FILE;
	gnome-calculator;
	clipboard=${clipboard/*calculator/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *calculator*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	gnome-calculator;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *open*browser* ]];
	then
	echo 1 > $COUNTER_FILE;
	sensible-browser;
	clipboard=${clipboard/*browser/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *browser*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	sensible-browser;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *text*editor* ]];
	then
	echo 1 > $COUNTER_FILE;
	atom;
	if [ $? != 0 ];
	then
	gnome-text-editor;
	fi &
	clipboard=${clipboard/*editor/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *open*terminal* ]];
	then
	echo 1 > $COUNTER_FILE;
	gnome-terminal;
	clipboard=${clipboard/*terminal/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *terminal*open* ]]||[[ "$clipboard" == *shell*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	gnome-terminal;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *open*shell* ]];
	then
	echo 1 > $COUNTER_FILE;
	gnome-terminal;
	clipboard=${clipboard/*shell/};
	echo $clipboard > $CLIP_FILE;
	fi &

# Window Management Commands
	if [[ "$clipboard" == *refresh* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key F5;
	clipboard=${clipboard/*refresh/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *select*all* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+a;
	clipboard=${clipboard/*all/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *move*left* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key super+Left;
	clipboard=${clipboard/*left/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *move*right* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key super+Right;
	clipboard=${clipboard/*right/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *left*move* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key super+Left;
	clipboard=${clipboard/*move/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *right*move* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key super+Right;
	clipboard=${clipboard/*move/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *move*window* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key alt+F7;
	clipboard=${clipboard/*window/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *window*move* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key alt+F7;
	clipboard=${clipboard/*move/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *go*back* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key alt+Left;
	clipboard=${clipboard/*back/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *go*forward* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key alt+Right;
	clipboard=${clipboard/*forward/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *page*up* ]]||[[ "$clipboard" == *scroll*up* ]]||[[ "$clipboard" == *go*up* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key Page_Up;
	clipboard=${clipboard/*up/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *page*down* ]]||[[ "$clipboard" == *scroll*down* ]]||[[ "$clipboard" == *go*down* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key Page_Down;
	clipboard=${clipboard/*down/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *minimi* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key super+Down;
	clipboard=${clipboard/*minimi/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *maximi* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key super+Up;
	clipboard=${clipboard/*maximi/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *zoom*in* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+plus;
	clipboard=${clipboard/*in/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *zoom*out* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+minus;
	clipboard=${clipboard/*out/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *zoom*default* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+0;
	clipboard=${clipboard/*default/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *new*tab* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+t;
	clipboard=${clipboard/*tab/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *new*window* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+n;
	clipboard=${clipboard/*window/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *next*tab* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+Tab;
	clipboard=${clipboard/*tab/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *previous*tab* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key shift+ctrl+Tab;
	clipboard=${clipboard/*tab/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *next*window* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key alt+Tab;
	clipboard=${clipboard/*window/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *previous*window* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key shift+alt+Tab;
	clipboard=${clipboard/*window/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *switch*window* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key shift+super+w;
	clipboard=${clipboard/*window/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *clos*current*tab* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+w;
	clipboard=${clipboard/*tab/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *current*tab*clos* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+w;
	clipboard=${clipboard/*clos/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *current*window*clos* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+w;
	clipboard=${clipboard/*clos/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *clos*current*window* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+w;
	clipboard=${clipboard/*window/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *clos* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key alt+F4;
	clipboard=${clipboard/*clos/};
	echo $clipboard > $CLIP_FILE;
	fi &

# Miscellaneous

	##################################################################################################################################Check keyboard hotkeys for more commands

	if [[ "$clipboard" == *increas*volume* ]]||[[ "$clipboard" == *enhanc*volume* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 15%+;
	pactl set-sink-volume 0 +15%;
	clipboard=${clipboard/*volume/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *volume*increas* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 15%+;
	pactl set-sink-volume 0 +15%;
	clipboard=${clipboard/*increas/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *volume*enhanc* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 15%+;
	pactl set-sink-volume 0 +15%;
	clipboard=${clipboard/*enhanc/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *decreas*volume* ]]||[[ "$clipboard" == *reduc*volume* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 15%-;
	pactl set-sink-volume 0 +15%;
	clipboard=${clipboard/*volume/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *volume*decreas* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 15%-;
	pactl set-sink-volume 0 +15%;
	clipboard=${clipboard/*decreas/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *volume*reduc* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 15%-;
	pactl set-sink-volume 0 +15%;
	clipboard=${clipboard/*reduc/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *volume*100* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 100%;
	pactl set-sink-volume 0 100%;
	clipboard=${clipboard/*100/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *volume*hundred* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 100%;
	pactl set-sink-volume 0 100%;
	clipboard=${clipboard/*hundred/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *100*volume* ]]||[[ "$clipboard" == *hundred*volume* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 100%;
	pactl set-sink-volume 0 100%;
	clipboard=${clipboard/*volume/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *volume*full* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 140%;
	pactl set-sink-volume 0 140%;
	clipboard=${clipboard/*full/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *full*volume* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 140%;
	pactl set-sink-volume 0 140%;
	clipboard=${clipboard/*volume/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *mute* ]];
	then
	echo 1 > $COUNTER_FILE;
	amixer set Master 0;
	pactl set-sink-volume 0 0;
	clipboard=${clipboard/*volume/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$clipboard" == *next*music* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioNext;
	clipboard=${clipboard/*music/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *music*next* ]]||[[ "$clipboard" == *play*next* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioNext;
	clipboard=${clipboard/*next/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *next*play* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioNext;
	clipboard=${clipboard/*play/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *previous*music* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioPrev;
	clipboard=${clipboard/*music/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *music*previous* ]]||[[ "$clipboard" == *play*previous* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioPrev;
	clipboard=${clipboard/*previous/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *previous*play* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioPrev;
	clipboard=${clipboard/*play/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *play*music* ]]||[[ "$clipboard" == *paus*music* ]]||[[ "$clipboard" == *stop*music* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioPlay;
	clipboard=${clipboard/*music/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *music*play* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioPlay;
	clipboard=${clipboard/*play/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *music*paus* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioPlay;
	clipboard=${clipboard/*paus/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *music*stop* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key XF86AudioPlay;
	clipboard=${clipboard/*stop/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *open*music* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Music;
	clipboard=${clipboard/*music/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *music*open* ]];
	then
	echo 1 > $COUNTER_FILE;
	xdg-open ~/Music;
	clipboard=${clipboard/*open/};
	echo $clipboard > $CLIP_FILE;
	fi &

# Long Scripts
	if [[ "$clipboard" == *clean*computer* ]];
	then
	echo 1 > $COUNTER_FILE;
	echo "10<,mmXLSQ" | sudo -S apt-get autoremove --purge -y &
	echo "10<,mmXLSQ" | sudo -S apt-get autoclean &
	echo "10<,mmXLSQ" | sudo -S apt-get clean all &
	clipboard=${clipboard/*computer/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *computer*clean* ]]||[[ "$clipboard" == *system*clean* ]];
	then
	echo 1 > $COUNTER_FILE;
	echo "10<,mmXLSQ" | sudo -S apt-get autoremove --purge -y &
	echo "10<,mmXLSQ" | sudo -S apt-get autoclean &
	echo "10<,mmXLSQ" | sudo -S apt-get clean all &
	clipboard=${clipboard/*clean/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *clean*system* ]]||[[ "$clipboard" == *clean*system* ]];
	then
	echo 1 > $COUNTER_FILE;
	echo "10<,mmXLSQ" | sudo -S apt-get autoremove --purge -y &
	echo "10<,mmXLSQ" | sudo -S apt-get autoclean &
	echo "10<,mmXLSQ" | sudo -S apt-get clean all &
	clipboard=${clipboard/*system/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *system*clean* ]];
	then
	echo 1 > $COUNTER_FILE;
	echo "10<,mmXLSQ" | sudo -S apt-get autoremove --purge -y &
	echo "10<,mmXLSQ" | sudo -S apt-get autoclean &
	echo "10<,mmXLSQ" | sudo -S apt-get clean all &
	clipboard=${clipboard/*clean/};
	echo $clipboard > $CLIP_FILE;
	fi &

# More Commands
	if [[ "$clipboard" == *stop*record* ]];
	then
	echo 1 > $COUNTER_FILE;
	pkill ffmpeg;
	clipboard=${clipboard/*screen/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *record*stop* ]];
	then
	echo 1 > $COUNTER_FILE;
	pkill ffmpeg;
	clipboard=${clipboard/*record/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *record*screen* ]];
	then
	echo 1 > $COUNTER_FILE;
	ffmpeg -y -f alsa -i default -f x11grab -s 1024x768 -r 30 -i :0.0 -preset ultrafast -acodec aac -strict experimental ~/Videos/recorded.mp4 &
	clipboard=${clipboard/*screen/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *screen*record* ]];
	then
	echo 1 > $COUNTER_FILE;
	ffmpeg -y -f alsa -i default -f x11grab -s 1024x768 -r 30 -i :0.0 -preset ultrafast -acodec aac -strict experimental ~/Videos/recorded.mp4 &
	clipboard=${clipboard/*record/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *current*screenshot* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key alt+Print;
	clipboard=${clipboard/*shot/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *screenshot*current* ]]||[[ "$clipboard" == *captur*current* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key alt+Print;
	clipboard=${clipboard/*current/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *current*captur* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key alt+Print;
	clipboard=${clipboard/*captur/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *screen*shot* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key Print;
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *captur*screen* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key Print;
	clipboard=${clipboard/*screen/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *screen*captur* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key Print;
	clipboard=${clipboard/*captur/};
	echo $clipboard > $CLIP_FILE;
	elif [[ "$clipboard" == *print* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+p;
	clipboard=${clipboard/*print/};
	echo $clipboard > $CLIP_FILE;
	fi &

if [ "$(head -c 1 $COUNTER_FILE)" == "0" ]			#Check if need to remove this ##########################################################################################
then
echo $clipboard > $CLIP_FILE
fi
x=$(cat "$CLIP_FILE")

done

# Browser Commands
	if [[ "$clipboard" == *find* ]];
	then
	echo 1 > $COUNTER_FILE;
	sleep 2;xdotool key ctrl+f;
	clipboard=${clipboard/*find/};
	echo $clipboard > $CLIP_FILE;
	fi &

	if [[ "$origclip" == *google*search* ]];
	then
	echo 1 > $COUNTER_FILE;
	substring=${origclip/*search/};
	sensible-browser "https://www.google.com/search?q=$substring";
	elif [[ "$origclip" == *search*google* ]];
	then
	echo 1 > $COUNTER_FILE;
	substring=${origclip/*google/};
	sensible-browser "https://www.google.com/search?q=$substring";
	elif [[ "$origclip" == *google* ]];
	then
	echo 1 > $COUNTER_FILE;
	sensible-browser 'https://www.google.com/';
	fi &

	if [[ "$origclip" == *search*you*ube* ]];
	then
	echo 1 > $COUNTER_FILE;
	substring=${origclip/*you*ube/};
	sensible-browser "https://www.youtube.com/results?search_query=$substring";
	elif [[ "$origclip" == *you*ube*search* ]];
	then
	echo 1 > $COUNTER_FILE;
	substring=${origclip/*search/};
	sensible-browser "https://www.youtube.com/results?search_query=$substring";
	elif [[ "$origclip" == *you*ube* ]];
	then
	echo 1 > $COUNTER_FILE;
	sensible-browser 'https://www.youtube.com/';
	fi &

	if [[ "$origclip" == *news* ]];
	then
	echo 1 > $COUNTER_FILE;
	sensible-browser 'https://tunein.com/radio/NDTV-24X7-s151565/';
	fi &

	if [[ "$origclip" == *facebook* ]];
	then
	echo 1 > $COUNTER_FILE;
	sensible-browser 'https://www.facebook.com/';
	elif [[ "$origclip" == *face*book* ]];
	then
	echo 1 > $COUNTER_FILE;
	sensible-browser 'https://www.facebook.com/';
	fi &

	if [[ "$origclip" == *inst*gram* ]];
	then
	echo 1 > $COUNTER_FILE;
	sensible-browser 'https://www.instagram.com/';
	fi &

# Type Command
	if [[ $origclip == *type* ]];
	then
	echo 1 > $COUNTER_FILE;
	substring=${origclip/*type/};
	sleep 2;xdotool type "$substring";
	fi &

prevclip=$origclip;

# Notify Command Status
count=$(head -c 1 $COUNTER_FILE);
if [ $count == '1' ];
then
zenity --notification --title "Success" --text "$origclip";
echo 2 > $COUNTER_FILE;
elif [ $count == '0' ];
then
if [[ $origclip == *voice*assistance*panky* ]]; then
	zenity --notification --title "Success" --text "$origclip";
	echo 2 > $COUNTER_FILE;
else
zenity --notification --title "Failure" --text "$origclip";
echo 2 > $COUNTER_FILE;
fi &
fi &