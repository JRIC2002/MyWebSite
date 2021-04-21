#!/usr/bin/env bash

#[*] Name of the script: MyWebSite
#[*] Description: "Start a Web Server"
#[*] Version: 2.0
#[*] Author: JRIC2002
#[*] Installer of the script: MyWebSite
#[*] Date of creation: 12/01/2019
#[*] Date of last update: 30/04/2020

#COLORS
black='\033[1;30m'
red='\033[1;31m'
green='\033[1;32'
myellow='\033[1;33m'
blue='\033[1;34m'
magenta='\033[1;35m'
cyan='\033[1;36m'
white='\033[0m'

#INSTALACION DE PAQUETES
echo ""
echo ""
printf "$cyan[$white#$cyan]$green Installing Packages...$white\n"
echo ""
sleep 2

pkg install php -y
pkg install util-linux -y
pkg install openssh -y

sleep 3
echo ""
printf "$blue			   >> Installation Complete <<$white"
echo ""
echo ""

#PREGUNTA
function pregunta {

	printf "
      $green  __  __    $white __        __   _   $blue ____  _ _
      $green |  \/  |_   $white\ \      / /__| |__$blue/ ___|(_) |_ ___
      $green | |\/| | | | $white\ \ /\ / / _ \ '_ $blue\___ \| | __/ _ *
      $green | |  | | |_| |$white\ V  V /  __/ |_) |__$blue) | | ||  __/
      $green |_|  |_|\__, | $white\_/\_/ \___|_.__/$blue\e ____/|_|\__\___|  v2.0
              $green |___/$white

             $yellow .:.:.$white Script encoded by: @JRIC2002 $yellow.:.:.$white
           $yellow .:.:.$white Description: Start a Web Server $yellow.:.:.$white
"
	echo ""
	sleep 1	
	printf "$cyan[$white\e0#$cyan]$magenta You want to start MyWebSite:$white\n"
	echo ""
	sleep 1
	
	printf "$green       [$white\e001$green]$yellow Yes$white\n"
	echo ""
	printf "$green       [$white\e002$green]$yellow No$white\n"
	echo ""
	printf "$green[$white\e0*$green]$green Choose an Option$white >>"
	read -p " " opt
	
	        if [ $opt = "1" -o $opt = "01" ]; then
	                clear
	                bash MyWebSite
	        elif [ $opt = "2" -o $opt = "02" ]; then
	                echo ""
	                exit
	        else
	                clear
	                pregunta
	        fi

}

pregunta

