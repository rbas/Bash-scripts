!# /bin/bash
echo "Instalation of locales" ; sleep 3 ;
aptitude $1 install locales ;

echo "Configuration of locales" ; sleep 3 ;
dpkg-reconfigure locales ;

echo "Instalation of keyrings" ; sleep 3 ;
aptitude $1 install debian-keyring debian-multimedia-keyring debian-backports-keyring ;

echo "Instalation of harden tools for desktop - hardended debian" ; sleep 3 ;
aptitude $1 install harden-clients harden-doc harden-environment harden-tools ;

#echo "Instalation of harden tools for servers - hardended debian" ; sleep 3 ;
#aptitude $1 install harden-servers harden-nids ;

#echo "Instalation of Bastille - configures SERVER (not desktop) securelly" ;
#aptitude $1 install bastille ;

# Everything below is optional and something depends on your HW
echo "Instalation of basic tools" ; sleep 3 ;
aptitude $1 install deborphan mc openssh-server sudo mutt htop less mlocate apt-file links2 testdisk;

echo "Instalation of NTFS support" ; sleep 3 ;
aptitude $1 install ntfs-3g ;

echo "Instalation of console jabber client" ; sleep 3 ;
aptitude $1 install mcabber ;


echo "Instalation of compiler and module utils - optional - depends most on drivers or what you want to compile" ; sleep 3 ;
aptitude $1 install gcc build-essential module-assistant;
aptitude $1 install linux-headers-`uname -r` kernel-package ;

echo "Instalation of Xorg video driver for Intel graphics card" ; sleep 3 ; 
aptitude $1 install xserver-xorg-video-intel ;

# GFX drivers and headers - for NVIDIA Graphics Cards
#echo "Instalation of nVidia graphics card drivers - Xorg for nonaccelerated mod" ; sleep 3 ;
#aptitude $1 install xserver-xorg-video-nv ;
#aptitude $1 install nvidia-glx nvidia-settings nvidia-xconfig ;

# Audio drivers - for KDE4 not recommended
#aptitude $1 install alsa alsa-source alsa-tools alsa-utils ;

#Power management for notebooks - for KDE4 not recommended
#aptitude $1 install cpufrequtils sysfsutils ;
#aptitude $1 install acpi hdparm sdparm laptop-detect laptop-mode-tools powersaved ;

# KDE4 and Debugger for reporting errors
echo "Instalation of KDE4 minimal , you can change for kde4-standard ; kde4-full (kde4 virtual package)" ;  sleep 3 ;
aptitude $1 install kde4-minimal ;

echo "Instalation of debuging lib for bug reporting" ;  sleep 3 ;
aptitude $1 install gdb ;

# databases
echo "Instalation of postgresql, mysql is probably installed with kde4-minimal and higher" ; sleep 3 ;
aptitude $1 install postgresql ;
#aptitude $1 install mysqlserver ;

# Default software for desktops
# Kpowersave not recommended for KDE4
#aptitude $1 install kpowersave ;


echo "Instalation of my fav tools - console, password managers and gpg tool" ; sleep 3 ;
aptitude $1 install yakuake kwalletmanager keepassx kgpg ;

echo "Instalation of iceweasel with few addons and codecs for wmv shit" ; sleep 3 ;
aptitude $1 install iceweasel iceweasel-dom-inspector iceweasel-downthemall iceweasel-firebug iceweasel-linky iceweasel-scrapbook iceweasel-torbutton iceweasel-webdeveloper mozilla-firefox-adblock mozilla-noscript;
aptitude $1 install w64codecs flashplugin-nonfree mozilla-mplayer ;

echo "Instalation of icedove email client and gpg support - kontact is better, so this is optional " ; sleep 3 ;
aptitude $1 install icedove enigmail ;

echo "Instalation of personal manager Kontact - in testing squeeze there is a problem with kaddressbook. It's necessary to get score about -10328 - all kontact apps with gnokii packages" ; sleep 3 ;
aptitude install kontact ;

echo "Instalation of instant messenger Kopete" ; sleep 3 ;
aptitude $1 install kopete ;
#aptitude $1 install psi ;

echo "Instalation of amaroK music player" ; sleep 3 ;
aptitude $1 install amarok ;

echo "Instalation of video player" ; sleep 3 ;
aptitude $1 install smplayer ;

echo "Instalation of keyboard utility for extra buttons on keyboards" ; sleep 3 ;
aptitude $1 install lineakd ;

echo "Instalation of wired and wireless tools. WICD or Wifi-Radar. One is enought ;]" ; sleep 3 ;
aptitude $1 install wifi-radar ;
aptitude $1 install wicd ;

# Krusader with tools
echo "Instalation of Krusader and extra tools" ; sleep 3 ;
aptitude $1 install kdesudo kget kdiff3 krename ;
aptitude $1 install 7z arj lha rar unace unrar zip ;
aptitude $1 install krusader ;

# databases tools
echo "Instalation of database tools - most for desktops" ; sleep 3 ;
aptitude $1 install mysql-gui-tools-common ;
aptitude $1 install pgadmin3 ;

# networking tools
echo "Instalation of network tools and TOR annonymizer" ; sleep 3 ;
aptitude $1 install wireshark ;
aptitude $1 install zenmap ;
aptitude $1 install etherape ;
aptitude $1 install tor tork ;

# Office tools with Czech support
echo "Instalation of OpenOffice" ; sleep 3 ;
aptitude $1 install openoffice.org ;

echo "Instalation of OpenOffice Czech support" ; sleep 3 ;
aptitude $1 install openoffice.org-l10n-cs openoffice.org-thesaurus-cs openoffice.org-help-cs;

echo "Instalation of additional OpenOffice components for KDE, Kadressbook, XHTML and PDF" ; sleep 3 ;
aptitude $1 install openoffice.org-kde openoffice.org-kab openoffice.org-writer2xhtml openoffice.org-pdfimport openoffice.org-wiki-publisher ;

echo "Instalation of Virtualisation solutions - this depends on you ;]" ; sleep 3 ;
aptitude $1 install virtualbox-ose ;
#aptitude $1 install qemu ;
#aptitude $1 install qemu-launcher ;
#aptitude $1 install kvm ;
#aptitude $1 install xen-tools xen-utils xen ;

echo "Instalation of system is completed :) " ; sleep 3 ;

# miscalous software
# HDD Monitoring tools
#aptitude $1 install smartmontools ; 