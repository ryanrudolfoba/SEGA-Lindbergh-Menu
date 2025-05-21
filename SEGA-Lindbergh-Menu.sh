#!/bin/bash

# define variables here
#base_game_folder=/home/$USER/SEGA-Lindbergh/games
base_game_folder=$HOME/SEGA-Lindbergh/games
toospicy=$base_game_folder/2spicy/disk0/elf
abc=$base_game_folder/abc/disk1
gsevo=$base_game_folder/gsevo/disk1/vsg_l
harley=$base_game_folder/harley/disk0/elf
hodex=$base_game_folder/hodex/disk0/elf
hotd4=$base_game_folder/hotd4/disk0/elf
hummer=$base_game_folder/hummer/disk0
id4=$base_game_folder/id4/disk0
id5=$base_game_folder/id5/disk0
lgj=$base_game_folder/lgj/disk0
or2=$base_game_folder/or2/disk0/Jennifer
primevil=$base_game_folder/primevil/disk0
racetv=$base_game_folder/racetv/disk0
rambo=$base_game_folder/rambo/disk0/elf
rtuned=$base_game_folder/rtuned/disk0
vf5fs=$base_game_folder/vf5fs-revb/disk0
vt3=$base_game_folder/vt3/disk0/vt3_Lindbergh

distrobox stop -Y lindbergh &> /dev/null
sleep 5
xhost +si:localuser:$USER > /dev/null

game=$(kdialog --radiolist "Simple Menu for Lindbergh Loader - Choose a Game to Play:" \
	1 "Too Spicy" on \
	2 "After Burner Climax" off \
	3 "Ghost Squad Evolution" off \
	4 "Harley Davidson - King of the Road" off \
	5 "Loving Deads - House of the Dead EX" off \
	6 "House of the Dead 4" off \
	7 "Hummer Extreme Edition" off \
	8 "Initial D Stage 4" off \
	9 "Initial D Stage 5" off \
	10 "Lets Go Jungle" off \
	11 "Outrun 2" off \
	12 "Primevil Hunt" off \
	13 "SEGA Race TV" off \
	14 "Rambo" off \
	15 "R-Tuned" off \
	16 "Virtua Fighter 5 Final Showdown" off \
	17 "Virtua Tennis 3" off )

if [ "$?" = 1 ]
then
	exit

elif [ "$game" = 1 ]
then
	distrobox enter lindbergh -e \
	"cd $toospicy ;\
	./lindbergh"

elif [ "$game" = 2 ]
then
	distrobox enter lindbergh -e \
	"cd $abc ;\
	./lindbergh"

elif [ "$game" = 3 ]
then
	distrobox enter lindbergh -e \
	"cd $gsevo ;\
	./lindbergh"

elif [ "$game" = 4 ]
then
	distrobox enter lindbergh -e \
	"cd $harley ;\
	./lindbergh"

elif [ "$game" = 5 ]
then
	distrobox enter lindbergh -e \
	"cd $hodex ;\
	./lindbergh"

elif [ "$game" = 6 ]
then
	distrobox enter lindbergh -e \
	"cd $hotd4 ;\
	./lindbergh"

elif [ "$game" = 7 ]
then
	distrobox enter lindbergh -e \
	"cd $hummer ;\
	./lindbergh"

elif [ "$game" = 8 ]
then
	distrobox enter lindbergh -e \
	"cd $id4 ;\
	./lindbergh"

elif [ "$game" = 9 ]
then
	distrobox enter lindbergh -e \
	"cd $id5 ;\
	./lindbergh"

elif [ "$game" = 10 ]
then
	distrobox enter lindbergh -e \
	"cd $lgj ;\
	./lindbergh"

elif [ "$game" = 11 ]
then
	distrobox enter lindbergh -e \
	"cd $or2 ;\
	./lindbergh"

elif [ "$game" = 12 ]
then
	distrobox enter lindbergh -e \
	"cd $primevil ;\
	./lindbergh"

elif [ "$game" = 13 ]
then
	distrobox enter lindbergh -e \
	"cd $racetv ;\
	./lindbergh"

elif [ "$game" = 14 ]
then
	distrobox enter lindbergh -e \
	"cd $rambo ;\
	./lindbergh"

elif [ "$game" = 15 ]
then
	distrobox enter lindbergh -e \
	"cd $rtuned ;\
	./lindbergh"

elif [ "$game" = 16 ]
then
	distrobox enter lindbergh -e \
	"cd $vf5fs ;\
	./lindbergh"

elif [ "$game" = 17 ]
then
	distrobox enter lindbergh -e \
	"cd $vt3 ;\
	./lindbergh"

else
	kdialog --error "ERROR"
fi

distrobox stop -Y lindbergh
