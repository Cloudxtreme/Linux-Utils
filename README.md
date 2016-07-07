Linux & Utils
=============

This is a collection of scripts, notes and personal knowledge about Linux and different programs and applications.

**This repo is actually for personal use, but feel free to use or contribute, it if you find it useful.**

-----

## Linux Commands

https://github.com/Mayccoll/Linux/blob/master/commands.md

-----

## Linux Fast Install

Collection of scripts to install some essential programs.

##### Install Basics

```bash
$ wget -O xw  https://git.io/vKYOP && chmod +x xw && ./xw && rm xw
```

- software-properties-common
- python-software-properties
- Progress bar
- Git
- Curl
- Vim
- Htop
- Tree
- ack

##### Install Eessentials

```bash
$ wget -O xw  https://git.io/vKY3A && chmod +x xw && ./xw && rm xw
```

- Essential tools for compiling from sources
- Packing software
- zssh
- Cloc
- Git Cloc
- Git Exwras

##### Install ZSH

```bash
$ wget -O xw  https://git.io/vKYsm && chmod +x xw && ./xw && rm xw
```

- zsh
- Oh-My-ZSH
- antigen

##### Install Alias

```bash
$ wget -O xw  https://git.io/vKYss && chmod +x xw && ./xw && rm xw
```

##### Install Stars

```bash
$ wget -O xw  https://git.io/vKYsW && chmod +x xw && ./xw && rm xw
```

##### Install Design Tools

```bash
$ wget -O xw  https://git.io/vKYsw && chmod +x xw && ./xw && rm xw
```

- gPick
- Shutter

##### Install Useful Tools

```bash
$ wget -O xw  https://git.io/vKYsP && chmod +x xw && ./xw && rm xw
```

- Samba
- Filezilla
- mysql-workbench
- Remmina
- Cryptkeeper
- Meld

##### Install Customize

```bash
$ wget -O xw  https://git.io/vKYsS && chmod +x xw && ./xw && rm xw
```

- Themes Libra Flattastic
- Grub Customizer
- Cairo-Dock

##### Install Extras

```bash
$ wget -O xw  https://git.io/vKYsd && chmod +x xw && ./xw && rm xw
```

- Pyrenamer
- DaemonFSk
- Gufw
- Viewnior
- Nemo Rabbitvcs

##### Install Docker

```bash
$ wget -O xw  https://git.io/vKYCx && chmod +x xw && ./xw && rm xw
```

##### Install Nodejs

```bash
$ wget -O xw  https://git.io/vKYG9 && chmod +x xw && ./xw && rm xw
```

- Nodejs
- npm

##### Install Python

```bash
$ wget -O xw  https://git.io/vKYGb && chmod +x xw && ./xw && rm xw
```

##### Install Ruby

```bash
$ wget -O xw  https://git.io/vKYZT && chmod +x xw && ./xw && rm xw
```

##### Install Ruby 2.2.1

```bash
$ wget -O xw  https://git.io/vKYZI && chmod +x xw && ./xw && rm xw
```

##### Install Syncthing

```bash
$ wget -O xw  https://git.io/vKYZY && chmod +x xw && ./xw && rm xw
```

##### Install LAMP

```bash
$ wget -O xw  https://git.io/vKYZR && chmod +x xw && ./xw && rm xw
```

- apache2
- libapache2-mod-php5
- mysql-server
- php5-mysql
- php-apc
- php-pear
- php5
- php5-cli
- php5-common
- php5-curl
- php5-dev
- php5-fpm
- php5-gd
- php5-geoip
- php5-imagick
- php5-imap
- php5-intl
- php5-mcrypt
- php5-memcache
- php5-memcached
- php5-mysql
- php5-sqlite
- php5-tidy
- php5-xdebug

##### Fix Locale

```bash
$ wget -O xw  https://git.io/vKYZi && chmod +x xw && ./xw && rm xw
```

##### Install zsh no root

```bash
$ wget -O xw  https://git.io/vKYZM && chmod +x xw && ./xw && rm xw
```

##### Install rMate

```bash
$ wget -O xw  https://git.io/vKYZy && chmod +x xw && ./xw && rm xw
```

-------------------------------------------------------------------------------

**Note:** if you get ERROR: certificate add ```--no-check-certificate```

```bash
$ wget --no-check-certificate -O xt  http://git.io/vKYOP && chmod +x xt && ./xt && rm xt
```


-------------------------------------------------------------------------------

## Install more nice stuffs

##### Vagrant

https://www.vagrantup.com/downloads.html

##### VirtualBox

https://www.virtualbox.org/wiki/Downloads

- Alsamixer
- Angry IP Scanner  - http://angryip.org/
- Haroopad          - http://pad.haroopress.com/
- Kitematic         - https://github.com/docker/kitematic
- Koala             - http://koala-app.com/
- Koala             - http://koala-app.com/
- Nitro Task        - http://nitrotasks.com/
- Pac               - http://sourceforge.net/projects/pacmanager/files/
- Pleeease          - http://pleeease.io/
- Screamingfrog     - https://www.screamingfrog.co.uk/seo-spider/
- Springseed        - http://getspringseed.com/
- Sublime text      - http://www.sublimetext.com/3
- Timeshift         - http://www.teejeetech.in/p/timeshift.html

##### Upgrade libreoffice

```bash
$ sudo add-apt-repository ppa:libreoffice/ppa
```

```bash
$
sudo apt -y install uget
sudo apt -y install inkscape
sudo apt -y install gparted
sudo apt -y install glipper
sudo apt -y install hardinfo
```
##### Brackets

```bash
$
sudo add-apt-repository -y ppa:webupd8team/brackets && \
sudo apt-get update && \
sudo apt-get -y install brackets
```

##### Atom

```bash
$
sudo add-apt-repository -y ppa:webupd8team/atom && \
sudo apt-get update && \
sudo apt-get -y install atom
```

##### System Info

https://github.com/dylanaraps/neofetch

```bash
$
sudo add-apt-repository -y ppa:dawidd0811/neofetch && \
sudo apt update && \
sudo apt install -y neofetch
```

##### Gimp 2.9

```bash
$ sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge
```

##### Install Gimp Theme photoshop

https://github.com/doctormo/GimpPs

##### Install last version of gThump

```bash
$ sudo add-apt-repository -y ppa:webupd8team/gthumb
```

##### Install Ansible

```bash
$
sudo apt-add-repository -y ppa:ansible/ansible && \
sudo apt-get update && \
sudo apt-get install -y ansible
```

##### Salt

```bash
$ sudo apt install -y python-software-properties
$ sudo add-apt-repository -y ppa:saltstack/salt
$ sudo apt update
$ sudo apt install -y salt-master
$ sudo apt install -y salt-minion
$ sudo apt install -y salt-syndic
```

##### Install Docker

```bash
# install docker
curl -sSL https://get.docker.com/ | sudo sh

# add my user to docker group
sudo gpasswd -a ${USER} docker

# restart docker
sudo service docker restart

# tell the current terminal about the new docker group changes
newgrp docker

# Install Docker Compose
sudo apt install python-pip
sudo pip install docker-compose
```

##### Install Go For It!

```bash
$
sudo add-apt-repository -y ppa:mank319/go-for-it && \
sudo apt update && \
sudo apt install -y go-for-it
```

##### Install Krita

```bash
$
sudo add-apt-repository -y ppa:dimula73/krita && \
sudo apt update && \
sudo apt install -y krita-2.9 krita-2.9-dbg
```

##### Install inotify

monitor events

https://github.com/rvoicilas/inotify-tools

```bash
$ sudo apt install -y inotify-tools
```

##### Install vlc

```bash
$
sudo add-apt-repository -y ppa:videolan/master-daily && \
sudo apt update && \
sudo apt install -y vlc
```

##### wkhtmltopdf

Convert html to pdf

```bash
$ sudo apt install -y  wkhtmltopdf

### Use Ex:
$ wkhtmltopdf http://google.com google.pdf
```

##### pandoc

Universal document converter

``` bash
$ sudo apt install -y pandoc texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended

## Use Ex:
$
pandoc -f markdown -t html README.md >> README.html
$
pandoc latex.md -o latex.pdf

```


##### Sigil

EPUB ebook Editor

https://sigil-ebook.com/

```bash
$
sudo add-apt-repository -y ppa:sunab/sigil-git && \
sudo apt update && \
sudo apt install -y sigil
```


##### Java

```bash
$
sudo add-apt-repository -y ppa:webupd8team/java && \
sudo apt update && \
sudo apt install -y oracle-java8-installer
```


##### Steam

```bash
$
wget -c media.steampowered.com/client/installer/steam.deb
sudo dpkg -i steam.deb
sudo apt install -f
```


##### Calibre

```bash
$ sudo apt install -y calibre
```


##### XBMC

```bash
$
sudo add-apt-repository -y ppa:team-xbmc/ppa && \
sudo apt update && \
sudo apt -y install xbmc
```


##### php 7

```bash
$ sudo apt install -y \
                php7.0 \
                php7.0-fpm \
                php7.0-mysql
```


##### Mysql

```bash
$ sudo apt install -y \
                mysql-server \
                mysql-client \
                libmysqlclient-dev \
                libmysqld-dev
```


##### Postgresql

```bash
$ sudo apt install -y postgresql \
            postgresql-client \
            postgresql-contrib
```


##### qshutdown

```bash
$ sudo apt install -y qshutdown
```

##### imagemagick

```bash
$ sudo apt install -y imagemagick
```

##### Bless Hex Editor

```bash
$ sudo apt install -y bless
```

##### Luckybackup

```bash
$ sudo apt install -y luckybackup
```

##### Wine

```bash
$ sudo apt install -y wine
```

##### Zentyal

```bash
$
sudo add-apt-repository "deb http://archive.zentyal.org/zentyal 4.1 main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 10E239FF
wget -q http://keys.zentyal.org/zentyal-4.1-archive.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install zentyal
#
# https://SERVER IP
# https://SERVER IP:8443
```


##### Trickle

Config Bandwidth

```bash
$ sudo apt install -y trickle
```

##### Composer, Laravel, Artisan

```bash
$
sudo apt-get install php5-cli
curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/bin/composer

composer global require "laravel/installer=~1.1"

echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ${HOME}/.zshrc

echo 'alias artisan="php artisan"' >> ${HOME}/.zshrc
```

##### Megadown

```bash
$
sudo apt install -y pv
sudo apt install-y php5-cli
git clone https://github.com/tonikelope/megadown.git
cd megadown
sudo chmod +x megadown
```

##### Megatools

https://github.com/megous/megatools

https://packages.debian.org/sid/amd64/megatools/download


##### Xtreme Download Manager

```bash
sudo add-apt-repository -y ppa:noobslab/apps && /
sudo apt update && /
sudo apt install -y xdman
```

##### Linux Brew*

- Pre:

```bash
sudo apt install -y build-essential \
                        curl \
                        git \
                        m4 \
                        ruby \
                        texinfo \
                        libbz2-dev \
                        libcurl4-openssl-dev \
                        libexpat-dev \
                        libncurses-dev \
                        zlib1g-dev
```

- Install:

```bash
git clone https://github.com/Homebrew/linuxbrew.git ~/.linuxbrew
```

- Add to .zshrc

```bash
cat >> $HOME/.zshrc << "EOF"
# |::::::::::::: Linux Brew ::::::::::::::>>>
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
# |::::::::::::: Linux Brew ::::::::::::::<<<
EOF
```

##### Nasc - Math

Do maths like a normal person

```bash
$
sudo apt-add-repository -y ppa:nasc-team/daily && \
sudo apt update && \
sudo apt install -y nasc
```

-------------------------------------------------------------------------------


## Themes and Icons



##### Libra

```bash
$
sudo add-apt-repository -y ppa:noobslab/themes && \
sudo apt update && \
sudo apt install -y libra-theme
```

##### vertex

```bash
$
sudo add-apt-repository -y ppa:noobslab/themes && \
sudo apt update && \
sudo apt install -y vertex-theme
```

##### Flattastic

```bash
$
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flattastic-suite
```

##### Ambiance ¬ Radiante

```bash
$
sudo add-apt-repository -y ppa:ravefinity-project/ppa
sudo apt-get update
sudo apt-get install -y radiance-colors ambiance-colors
```

##### iOS 7

```bash
$
sudo add-apt-repository ppa:noobslab/icons
sudo apt update
sudo apt install ieos7-icons
```

##### Faience

```bash
$
### http://tiheum.deviantart.com/art/Faience-icon-theme-255099649

sudo add-apt-repository ppa:tiheum/equinox
sudo apt update
sudo apt install faience-theme faience-icon-theme
```

##### Compass Icons

```bash
$
sudo ppa:noobslab/nitrux-os
sudo apt update
sudo apt install compass-icons
```

##### Pacifica Icons

```bash
$
sudo add-apt-repository ppa:fsvh/pacifica-icon-theme
sudo apt update
sudo apt install pacifica-icon-theme
```

##### Nitrux Icons

```bash
$
sudo add-apt-repository ppa:upubuntu-com/nitrux
sudo apt update
sudo apt install nitruxos
```

##### Faience

>>>    /usr/share/icons

``` bash
### http://tiheum.deviantart.com/art/Faience-icon-theme-255099649

$
sudo add-apt-repository ppa:tiheum/equinox
sudo apt update
sudo apt install faience-theme faience-icon-theme

```



-------------------------------------------------------------------------------


## Linux Desktop

``` bash
$
sudo add-apt-repository -y ppa:gnome3-team/gnome3-staging && \
sudo add-apt-repository -y ppa:gnome3-team/gnome3 && \
sudo apt-get update && \
sudo apt-get install -y gnome
```
