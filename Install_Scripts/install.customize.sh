#!/bin/bash

# Reset color
RS="\e[0m"
# Basic Colors
BLACK="\e[0;30m"
RED="\e[0;31m"
GREEN="\e[0;32m"
YELLOW="\e[0;33m"
BLUE="\e[0;34m"
PURPLE="\e[0;35m"
CYAN="\e[0;36m"
WHITE="\e[0;37m"

function_message_title () {
  echo -e "${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "# |      ${RS} $1 ${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "${RS}"
}

SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# - **update**
sudo apt update
wait

# - **Themes Libra Flattastic**
function_message_title '- **Install Themes Libra Flattastic**'
sudo add-apt-repository -y ppa:noobslab/themes
sudo apt-get update
sudo apt-get install -y libra-theme
sudo apt-get install -y flattastic-suite


# - **Grub Customizer**
function_message_title '- **Grub Customizer**'
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt-get install -y grub-customizer
wait


# - **Cairo-Dock**
function_message_title '- **Cairo-Dock**'
sudo add-apt-repository -y ppa:cairo-dock-team/ppa
sudo apt update
sudo apt-get install -y cairo-dock cairo-dock-plug-ins
wait
