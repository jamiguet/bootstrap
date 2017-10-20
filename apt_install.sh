#!/bin/bash

# setup sources


cat <<EOF > /tmp/boostrap.list
deb [arch=amd64] https://repo.skype.com/deb stable main
deb http://ch.archive.ubuntu.com/ubuntu/ zesty-backports main restricted universe multiverse
deb http://ch.archive.ubuntu.com/ubuntu/ zesty main restricted
deb http://ch.archive.ubuntu.com/ubuntu/ zesty multiverse
deb http://ch.archive.ubuntu.com/ubuntu/ zesty universe
deb http://ch.archive.ubuntu.com/ubuntu/ zesty-updates main restricted
deb http://ch.archive.ubuntu.com/ubuntu/ zesty-updates multiverse
deb http://ch.archive.ubuntu.com/ubuntu/ zesty-updates universe
deb http://ppa.launchpad.net/ansible/ansible/ubuntu yakkety main
deb http://repository.spotify.com stable non-free 
deb http://security.ubuntu.com/ubuntu zesty-security main restricted
deb http://security.ubuntu.com/ubuntu zesty-security multiverse
deb http://security.ubuntu.com/ubuntu zesty-security universe
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty-backports main restricted universe multiverse
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty main restricted
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty multiverse
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty universe
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty-updates main restricted
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty-updates multiverse
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty-updates universe
deb-src http://security.ubuntu.com/ubuntu zesty-security main restricted
deb-src http://security.ubuntu.com/ubuntu zesty-security multiverse
deb-src http://security.ubuntu.com/ubuntu zesty-security universe

EOF

sudo cp /tmp/bootstrap.list /etc/apt/sources.list.d/

sudo apt update


cat <<EOF > packages.list

a11y-profile-manager-indicator account-plugin-facebook
account-plugin-flickr account-plugin-google accountsservice
accountsservice-ubuntu-schemas accountsservice-ubuntu-touch-schemas
acl acpi-support acpid activity-log-manager address-book-service
adduser adium-theme-ubuntu adwaita-icon-theme aglfn aisleriot
alsa-base alsa-utils anacron apg app-install-data-partner apparmor
apparmor-easyprof apparmor-easyprof-ubuntu appmenu-qt apport
apport-gtk apport-symptoms appstream apt apt-transport-https apt-utils
aptdaemon aptdaemon-data apturl apturl-common aspell aspell-en
aspell-es aspell-fr aspell-it aspell-pt-pt at-spi2-core autoconf
automake autopoint autotools-dev avahi-autoipd avahi-daemon
avahi-utils bamfdaemon baobab base-files base-passwd bash
bash-completion bc bigtop-jsvc bigtop-utils bind9-host binutils
biometryd-bin bison blt bluez bluez-cups bluez-obexd branding-ubuntu
bridge-utils brltty bsdmainutils bsdtar bsdutils build-essential
busybox-initramfs busybox-static bzip2 bzr ca-certificates
ca-certificates-java cdbs cgroupfs-mount checkbox-converged
checkbox-gui cheese cheese-common chromium-codecs-ffmpeg-extra click
click-apparmor colord colord-data command-not-found
command-not-found-data compiz compiz-core compiz-gnome
compiz-plugins-default console-setup console-setup-linux containerd
content-hub coreutils cpio cpp cpp-5 cpp-6 cracklib-runtime crda cron
cups cups-browsed cups-bsd cups-client cups-common cups-core-drivers
cups-daemon cups-filters cups-filters-core-drivers cups-ipp-utils
cups-pk-helper cups-ppdc cups-server-common curl dash dbus
dbus-user-session dbus-x11 dc dconf-cli dconf-gsettings-backend
dconf-service dctrl-tools debconf debconf-i18n debhelper debianutils
default-jdk default-jdk-headless default-jre default-jre-headless
deja-dup desktop-file-utils devscripts dh-autoreconf dh-exec dh-python
dh-strip-nondeterminism dh-translations dictionaries-common diffstat
diffutils dirmngr distro-info-data dkms dmidecode dmsetup
dmz-cursor-theme dns-root-data dnsmasq-base dnsutils doc-base
docker.io dos2unix dosfstools dpkg dpkg-dev dvipng e2fslibs e2fsprogs
ed efibootmgr eject emacs24 emacs24-bin-common emacs24-common
emacs24-common-non-dfsg emacs24-el emacsen-common enchant eog epstool
espeak-ng-data ethtool evince evince-common evolution-data-server
evolution-data-server-common evolution-data-server-online-accounts
evolution-data-server-utouch example-content f2c fakeroot fig2dev file
file-roller findutils firefox firefox-locale-en flashplugin-installer
flex folks-common fontconfig fontconfig-config fonts-dejavu-core
fonts-droid-fallback fonts-freefont-ttf fonts-guru fonts-guru-extra
fonts-kacst fonts-kacst-one fonts-khmeros-core fonts-lao fonts-lato
fonts-liberation fonts-lklug-sinhala fonts-lmodern fonts-lohit-guru
fonts-nanum fonts-noto-cjk fonts-noto-mono fonts-opensymbol
fonts-sil-abyssinica fonts-sil-padauk fonts-symbola
fonts-takao-pgothic fonts-texgyre fonts-thai-tlwg
fonts-tibetan-machine fonts-tlwg-garuda fonts-tlwg-garuda-ttf
fonts-tlwg-kinnari fonts-tlwg-kinnari-ttf fonts-tlwg-laksaman
fonts-tlwg-laksaman-ttf fonts-tlwg-loma fonts-tlwg-loma-ttf
fonts-tlwg-mono fonts-tlwg-mono-ttf fonts-tlwg-norasi
fonts-tlwg-norasi-ttf fonts-tlwg-purisa fonts-tlwg-purisa-ttf
fonts-tlwg-sawasdee fonts-tlwg-sawasdee-ttf fonts-tlwg-typewriter
fonts-tlwg-typewriter-ttf fonts-tlwg-typist fonts-tlwg-typist-ttf
fonts-tlwg-typo fonts-tlwg-typo-ttf fonts-tlwg-umpush
fonts-tlwg-umpush-ttf fonts-tlwg-waree fonts-tlwg-waree-ttf
foomatic-db-compressed-ppds fort77 freepats friendly-recovery ftp fuse
fwupd fwupdate fwupdate-signed g++ g++-6 gawk gcc gcc-5 gcc-5-base
gcc-6 gcc-6-base gconf-service gconf-service-backend gconf2
gconf2-common gcr gdb gdbserver gdisk gedit gedit-common genisoimage
geoclue geoclue-2.0 geoclue-ubuntu-geoip geoip-database gettext
gettext-base gfortran gfortran-5 gfortran-6 ghostscript ghostscript-x
gir1.2-accounts-1.0 gir1.2-appindicator3-0.1 gir1.2-appstreamglib-1.0
gir1.2-atk-1.0 gir1.2-atspi-2.0 gir1.2-click-0.4
gir1.2-dbusmenu-glib-0.4 gir1.2-dee-1.0 gir1.2-freedesktop
gir1.2-gdata-0.0 gir1.2-gdkpixbuf-2.0 gir1.2-gee-0.8 gir1.2-glib-2.0
gir1.2-gnomekeyring-1.0 gir1.2-goa-1.0 gir1.2-gst-plugins-base-1.0
gir1.2-gstreamer-1.0 gir1.2-gtk-3.0 gir1.2-gtksource-3.0
gir1.2-gudev-1.0 gir1.2-gusb-1.0 gir1.2-ibus-1.0
gir1.2-javascriptcoregtk-4.0 gir1.2-json-1.0 gir1.2-notify-0.7
gir1.2-packagekitglib-1.0 gir1.2-pango-1.0 gir1.2-peas-1.0
gir1.2-rb-3.0 gir1.2-secret-1 gir1.2-signon-1.0 gir1.2-soup-2.4
gir1.2-totem-1.0 gir1.2-totem-plparser-1.0 gir1.2-udisks-2.0
gir1.2-unity-5.0 gir1.2-vte-2.91 gir1.2-webkit2-4.0 gir1.2-wnck-3.0
git git-man gkbd-capplet glib-networking glib-networking-common
glib-networking-services glibc-source gnome-accessibility-themes
gnome-bluetooth gnome-calculator gnome-calendar gnome-desktop3-data
gnome-disk-utility gnome-font-viewer gnome-keyring gnome-mahjongg
gnome-menus gnome-mines gnome-orca gnome-power-manager
gnome-screensaver gnome-screenshot gnome-session-bin
gnome-session-canberra gnome-session-common
gnome-settings-daemon-schemas gnome-software gnome-software-common
gnome-software-plugin-snap gnome-sudoku gnome-system-log
gnome-system-monitor gnome-terminal gnome-terminal-data
gnome-user-guide gnome-user-share gnome-video-effects gnupg
gnupg-agent gnupg-l10n gnupg2 gnuplot-data gnuplot-x11 gparted gperf
gpgv graphviz grep grilo-plugins-0.3-base groff-base grub-common
grub-efi-amd64 grub-efi-amd64-bin grub-efi-amd64-signed grub2-common
gsettings-desktop-schemas gsettings-ubuntu-schemas gsfonts
gstreamer1.0-alsa gstreamer1.0-clutter-3.0 gstreamer1.0-fluendo-mp3
gstreamer1.0-libav gstreamer1.0-plugins-bad
gstreamer1.0-plugins-bad-faad gstreamer1.0-plugins-bad-videoparsers
gstreamer1.0-plugins-base gstreamer1.0-plugins-base-apps
gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly
gstreamer1.0-plugins-ugly-amr gstreamer1.0-pulseaudio
gstreamer1.0-tools gstreamer1.0-x gtk-update-icon-cache
gtk2-engines-murrine gucharmap guile-2.0-libs gvfs gvfs-backends
gvfs-bin gvfs-common gvfs-daemons gvfs-fuse gvfs-libs gzip
hdf5-helpers hdparm hicolor-icon-theme history-service hostname hplip
hplip-data hud humanity-icon-theme hunspell-en-us hyphen-en-ca
hyphen-en-us hyphen-fi hyphen-ga hyphen-id i965-va-driver ibus
ibus-gtk ibus-gtk3 ibus-table icoutils icu-devtools ifupdown
iio-sensor-proxy im-config imagemagick imagemagick-6-common
imagemagick-6.q16 indicator-application indicator-appmenu
indicator-bluetooth indicator-common indicator-datetime
indicator-keyboard indicator-messages indicator-network
indicator-power indicator-printers indicator-session indicator-sound
indicator-transfer indicator-transfer-download-manager info init
init-system-helpers initramfs-tools initramfs-tools-bin
initramfs-tools-core inputattach install-info intel-gpu-tools
intel-microcode intltool intltool-debian ippusbxd iproute2 iptables
iputils-arping iputils-ping iputils-tracepath irqbalance
isc-dhcp-client isc-dhcp-common iso-codes iucode-tool iw java-common
javahelper javascript-common jayatana jsvc kbd kerneloops-daemon
keyboard-configuration klibc-utils kmod krb5-locales language-pack-en
language-pack-en-base language-pack-gnome-en
language-pack-gnome-en-base language-selector-common
language-selector-gnome laptop-detect latexmk less
liba11y-profile-manager-0.1-0 liba11y-profile-manager-data
liba52-0.7.4 libaa1 libaacs0 libabw-0.1-1 libaccount-plugin-1.0-0
libaccount-plugin-flickr libaccount-plugin-generic-oauth
libaccount-plugin-google libaccounts-glib0 libaccounts-qt5-1
libaccountsservice0 libacl1 libaec-dev libaec0 libalgorithm-diff-perl
libalgorithm-diff-xs-perl libalgorithm-merge-perl libamd2
libandroid-properties1 libao-common libao4 libapparmor-perl
libapparmor1 libappindicator3-1 libappstream-glib8 libappstream4
libapr1 libaprutil1 libapt-inst2.0 libapt-pkg-perl libapt-pkg5.0
libarchive-tools libarchive-zip-perl libarchive13 libarpack2
libarpack2-dev libart-2.0-2 libasan2 libasan3 libasn1-8-heimdal
libasound2 libasound2-data libasound2-dev libasound2-plugins
libaspell15 libasprintf-dev libasprintf0v5 libass5 libassuan0
libasyncns0 libatasmart4 libatk-adaptor libatk-bridge2.0-0
libatk-wrapper-java libatk-wrapper-java-jni libatk1.0-0 libatk1.0-data
libatkmm-1.6-1v5 libatm1 libatomic1 libatspi2.0-0 libattr1 libaudio2
libaudit-common libaudit1 libauthen-sasl-perl libavahi-client3
libavahi-common-data libavahi-common3 libavahi-core7 libavahi-glib1
libavahi-ui-gtk3-0 libavc1394-0 libavcodec57 libavfilter6
libavformat57 libavresample3 libavutil55 libb-hooks-endofscope-perl
libb64-0d libbabeltrace-ctf1 libbabeltrace1 libbamf3-2
libbasicusageenvironment1 libbdplus0 libbind9-140 libbiometryd1
libbison-dev libblas-common libblas-dev libblas3 libblkid1
libbluetooth3 libbluray2 libbonobo2-0 libbonobo2-common
libboost-date-time1.62.0 libboost-filesystem1.62.0
libboost-iostreams1.62.0 libboost-log1.62.0
libboost-program-options1.62.0 libboost-regex1.62.0
libboost-serialization1.62.0 libboost-system1.61.0
libboost-system1.62.0 libboost-thread1.62.0 libbrlapi0.6 libbs2b0
libbsd0 libbtf1 libbz2-1.0 libbz2-dev libc-bin libc-dev-bin libc6
libc6-dbg libc6-dev libcaca0 libcairo-gobject2 libcairo-perl libcairo2
libcairomm-1.0-1v5 libcamd2 libcamel-1.2-59 libcanberra-gtk-module
libcanberra-gtk0 libcanberra-gtk3-0 libcanberra-gtk3-module
libcanberra-pulse libcanberra0 libcap-ng0 libcap2 libcap2-bin
libcapnp-0.5.3 libcc1-0 libccolamd2 libcddb2 libcdio-cdda1
libcdio-paranoia1 libcdio13 libcdparanoia0 libcdr-0.1-1 libcdt5
libcgi-fast-perl libcgi-pm-perl libcgmanager0 libcgraph6
libcheese-gtk25 libcheese8 libcholmod3 libchromaprint1 libcilkrts5
libclass-accessor-perl libclass-method-modifiers-perl
libclass-xsaccessor-perl libclick-0.4-0 libclone-perl
libclucene-contribs1v5 libclucene-core1v5 libclutter-1.0-0
libclutter-1.0-common libclutter-gst-3.0-0 libclutter-gtk-1.0-0
libcmis-0.5-5v5 libcogl-common libcogl-pango20 libcogl-path20
libcogl20 libcolamd2 libcolord2 libcolorhug2 libcolumbus1-common
libcolumbus1v5 libcomerr2 libcommons-daemon-java libcompizconfig0
libconnectivity-qt1 libcontent-hub-glib0 libcontent-hub0 libcrack2
libcroco3 libcryptsetup4 libcrystalhd3 libcups2 libcupscgi1
libcupsfilters1 libcupsimage2 libcupsmime1 libcupsppdc1 libcurl3
libcurl3-gnutls libcurl4-gnutls-dev libcxsparse3 libdaemon0
libdata-optlist-perl libdatrie1 libdb5.3 libdbus-1-3 libdbus-cpp5
libdbus-glib-1-2 libdbusmenu-glib4 libdbusmenu-gtk3-4 libdbusmenu-gtk4
libdbusmenu-qt2 libdbusmenu-qt5 libdc1394-22 libdca0 libdconf1
libde265-0 libdebconfclient0 libdecoration0 libdee-1.0-4
libdevel-globaldestruction-perl libdevmapper1.02.1 libdfu1
libdigest-hmac-perl libdirectfb-1.2-9 libdjvulibre-text libdjvulibre21
libdmapsharing-3.0-2 libdns-export162 libdns162 libdotconf0
libdouble-conversion1 libdpkg-perl libdrm-amdgpu1 libdrm-dev
libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2 libdv4
libdvbpsi10 libdvdnav4 libdvdread4 libdw1 libe-book-0.1-1
libebackend-1.2-10 libebml4v5 libebook-1.2-16 libebook-contacts-1.2-2
libebur128-1 libecal-1.2-19 libedata-book-1.2-25 libedata-cal-1.2-28
libedataserver-1.2-22 libedataserverui-1.2-1 libedit2 libefiboot1
libefivar1 libegl1-mesa libelf1 libemail-valid-perl libenchant1c2a
libencode-locale-perl libeot0 libepoxy0 liberror-perl
libertine-xmir-tools libertined libespeak-ng1 libestr0
libetonyek-0.1-1 libevdev2 libevdocument3-4 libevent-2.0-5
libevview3-3 libexempi3 libexif-dev libexif12 libexiv2-14 libexpat1
libexpat1-dev libexporter-tiny-perl libexttextcat-2.0-0
libexttextcat-data libf2c2 libf2c2-dev libfaad2 libfakeroot
libfcgi-perl libfcitx-config4 libfcitx-gclient0 libfcitx-utils0
libfdisk1 libffi6 libfftw3-bin libfftw3-dev libfftw3-double3
libfftw3-long3 libfftw3-quad3 libfftw3-single3 libfile-basedir-perl
libfile-copy-recursive-perl libfile-desktopentry-perl
libfile-fcntllock-perl libfile-homedir-perl libfile-listing-perl
libfile-mimeinfo-perl libfile-stripnondeterminism-perl
libfile-which-perl libfl-dev libflac-dev libflac8 libflite1
libfltk-cairo1.3 libfltk-forms1.3 libfltk-gl1.3 libfltk-images1.3
libfltk1.3 libfltk1.3-dev libfluidsynth1 libfolks-eds25 libfolks25
libfont-afm-perl libfontconfig1 libfontconfig1-dev libfontembed1
libfontenc1 libframe6 libfreehand-0.1-1 libfreerdp-cache1.1
libfreerdp-client1.1 libfreerdp-codec1.1 libfreerdp-common1.1.0
libfreerdp-core1.1 libfreerdp-crypto1.1 libfreerdp-gdi1.1
libfreerdp-locale1.1 libfreerdp-plugins-standard
libfreerdp-primitives1.1 libfreerdp-utils1.1 libfreetype6
libfreetype6-dev libfribidi0 libftgl-dev libftgl2 libfuse2 libfwup1
libfwupd1 libgail-3-0 libgail-common libgail18 libgbm1 libgc1c2
libgcab-1.0-0 libgcc-5-dev libgcc-6-dev libgcc1 libgck-1-0
libgconf-2-4 libgcr-3-common libgcr-base-3-1 libgcr-ui-3-1 libgcrypt20
libgd3 libgdata-common libgdata22 libgdbm3 libgdk-pixbuf2.0-0
libgdk-pixbuf2.0-bin libgdk-pixbuf2.0-common libgee-0.8-2 libgeis1
libgeoclue-2-0 libgeoclue0 libgeocode-glib0 libgeoip1
libgeonames-common libgeonames0 libgetopt-long-descriptive-perl
libgettextpo-dev libgettextpo0 libgexiv2-2 libgflags2v5
libgfortran-5-dev libgfortran-6-dev libgfortran3 libgif7
libgirepository-1.0-1 libgl1-mesa-dev libgl1-mesa-dri libgl1-mesa-glx
libgl2ps-dev libgl2ps1 libglapi-mesa libgles2-mesa libglewmx1.13
libglib-perl libglib2.0-0 libglib2.0-bin libglib2.0-data
libglibmm-2.4-1v5 libglpk-dev libglpk40 libglu1-mesa libglu1-mesa-dev
libgme0 libgmime-2.6-0 libgmp-dev libgmp10 libgmpxx4ldbl libgnome-2-0
libgnome-bluetooth13 libgnome-desktop-3-12 libgnome-games-support-1-2
libgnome-games-support-common libgnome-keyring-common
libgnome-keyring0 libgnome-menu-3-0 libgnome2-bin libgnome2-common
libgnomekbd-common libgnomekbd8 libgnomevfs2-0 libgnomevfs2-common
libgnutls-openssl27 libgnutls30 libgoa-1.0-0b libgoa-1.0-common
libgom-1.0-0 libgom-1.0-common libgomp1 libgoogle-glog0v5
libgpg-error0 libgpgme11 libgphoto2-6 libgphoto2-l10n
libgphoto2-port12 libgpm2 libgpod-common libgpod4 libgrail6
libgraphicsmagick++-q16-12 libgraphicsmagick++1-dev
libgraphicsmagick-q16-3 libgraphicsmagick1-dev libgraphite2-3
libgrilo-0.3-0 libgroupsock8 libgs9 libgs9-common libgsettings-qt1
libgsm1 libgsoap10 libgspell-1-1 libgspell-1-common libgssapi-krb5-2
libgssapi3-heimdal libgstreamer-plugins-bad1.0-0
libgstreamer-plugins-base1.0-0 libgstreamer-plugins-good1.0-0
libgstreamer1.0-0 libgtk-3-0 libgtk-3-bin libgtk-3-common libgtk2-perl
libgtk2.0-0 libgtk2.0-bin libgtk2.0-common libgtkglext1
libgtkmm-2.4-1v5 libgtkmm-3.0-1v5 libgtksourceview-3.0-1
libgtksourceview-3.0-common libgtkspell3-3-0 libgtop-2.0-10
libgtop2-common libgucharmap-2-90-7 libgudev-1.0-0 libgusb2
libgutenprint2 libgvc6 libgvpr2 libgweather-3-6 libgweather-common
libgxps2 libhardware2 libharfbuzz-icu0 libharfbuzz0b
libhawtjni-runtime-java libhcrypto4-heimdal libhdf5-100
libhdf5-cpp-100 libhdf5-dev libheimbase1-heimdal libheimntlm0-heimdal
libhistoryservice0 libhogweed4 libhpmud0 libhtml-form-perl
libhtml-format-perl libhtml-parser-perl libhtml-tagset-perl
libhtml-tree-perl libhttp-cookies-perl libhttp-daemon-perl
libhttp-date-perl libhttp-message-perl libhttp-negotiate-perl libhud2
libhunspell-1.4-0 libhx509-5-heimdal libhybris libhybris-common1
libhyphen0 libibus-1.0-5 libical2 libice-dev libice6 libicu-dev
libicu57 libidn11 libidn2-0 libido3-0.1-0 libiec61883-0 libieee1284-3
libijs-0.35 libilmbase12 libimobiledevice6 libimport-into-perl
libindicator-transfer0 libindicator3-7 libinput-bin libinput10
libio-html-perl libio-pty-perl libio-socket-inet6-perl
libio-socket-ssl-perl libio-string-perl libio-stringy-perl libip4tc0
libip6tc0 libipc-run-perl libipc-system-simple-perl libiptc0
libisc-export160 libisc160 libisccc140 libisccfg140 libisl15
libiso9660-8 libitm1 libiw30 libjack-dev libjack0 libjansi-java
libjansi-native-java libjansson4 libjavascriptcoregtk-4.0-18
libjbig-dev libjbig0 libjbig2dec0 libjline2-java libjpeg-dev
libjpeg-turbo8 libjpeg-turbo8-dev libjpeg8 libjpeg8-dev libjq1
libjs-jquery libjson-c3 libjson-glib-1.0-0 libjson-glib-1.0-common
libjsoncpp1 libk5crypto3 libkate1 libkeyutils1 libklibc libklu1
libkmod2 libkpathsea6 libkrb5-26-heimdal libkrb5-3 libkrb5support0
libksba8 liblangtag-common liblangtag1 liblapack-dev liblapack3
liblcms2-2 liblcms2-dev liblcms2-utils libldap-2.4-2 libldap-common
libldb1 libldl2 libleveldb1v5 liblibertine1 liblightdm-gobject-1-0
liblightdm-qt5-3-0 liblilv-0-0 liblirc-client0 liblist-moreutils-perl
liblivemedia57 libllvm4.0 liblocale-gettext-perl liblockfile-bin
liblockfile1 liblouis-data liblouis12 liblouisutdml-bin
liblouisutdml-data liblouisutdml7 liblqr-1-0 liblsan0 libltdl-dev
libltdl7 liblttng-ust-ctl2 liblttng-ust0 liblua5.1-0 liblua5.2-0
liblua5.3-0 libluajit-5.1-2 libluajit-5.1-common
liblwp-mediatypes-perl liblwp-protocol-https-perl liblwres141 liblz4-1
liblzma-dev liblzma5 liblzo2-2 libm17n-0 libmad0 libmagic-mgc
libmagic1 libmagick++-6.q16-7 libmagickcore-6.q16-3
libmagickcore-6.q16-3-extra libmagickwand-6.q16-3 libmailtools-perl
libmatroska6v5 libmbim-glib4 libmbim-proxy libmedia1 libmediaart-2.0-0
libmediascanner-2.0-4 libmessaging-menu0 libmetacity1 libmetis5
libmhash2 libminiupnpc10 libmiral2 libmirclient9 libmircommon7
libmircookie2 libmircore1 libmirplatform15 libmirprotobuf3
libmirserver43 libmission-control-plugins0 libmjpegutils-2.1-0
libmm-glib0 libmms0 libmng2 libmnl0 libmodplug1
libmodule-implementation-perl libmodule-runtime-perl libmoo-perl
libmount1 libmp3lame0 libmpc3 libmpcdec6 libmpdec2 libmpeg2-4
libmpeg2encpp-2.1-0 libmpfr4 libmpg123-0 libmplex2-2.1-0 libmpx0
libmpx2 libmspub-0.1-1 libmtdev1 libmtp-common libmtp-runtime libmtp9
libmwaw-0.3-3 libmythes-1.2-0 libnamespace-clean-perl libnatpmp1
libnautilus-extension1a libncurses5 libncurses5-dev libncursesw5
libndp0 libneon27-gnutls libnet-cpp2 libnet-dbus-perl libnet-dns-perl
libnet-domain-tld-perl libnet-http-perl libnet-ip-perl
libnet-libidn-perl libnet-smtp-ssl-perl libnet-ssleay-perl
libnetfilter-conntrack3 libnetpbm10 libnettle6 libnewt0.52
libnfnetlink0 libnih-dbus1 libnih1 libnl-3-200 libnl-genl-3-200
libnm-glib-vpn1 libnm-glib4 libnm-gtk-common libnm-gtk0 libnm-util2
libnm0 libnma-common libnma0 libnotify-bin libnotify4 libnpth0
libnspr4 libnss-mdns libnss-resolve libnss3 libntfs-3g871 libnuma1
libnumber-compare-perl libnumber-range-perl libnux-4.0-0
libnux-4.0-common liboauth0 liboctave3v5 libodfgen-0.1-1 libofa0
libogg-dev libogg0 libonig4 libonline-accounts-client1
libonline-accounts-daemon1 libonline-accounts-qt1 libopenal-data
libopenal1 libopenblas-base libopencore-amrnb0 libopencore-amrwb0
libopencv-calib3d2.4v5 libopencv-core2.4v5 libopencv-features2d2.4v5
libopencv-flann2.4v5 libopencv-highgui2.4-deb0 libopencv-imgproc2.4v5
libopencv-objdetect2.4v5 libopencv-video2.4v5 libopenexr22
libopenjp2-7 libopenmpt-modplug1 libopenmpt0 libopus0 liborbit-2-0
liborc-0.4-0 libosmesa6 libosmesa6-dev libotf0 liboxideqt-qmlplugin
liboxideqtcore0 liboxideqtquick0 libp11-kit-gnome-keyring libp11-kit0
libpackage-stash-perl libpackage-stash-xs-perl libpackagekit-glib2-18
libpagemaker-0.0-0 libpam-gnome-keyring libpam-modules
libpam-modules-bin libpam-runtime libpam-systemd libpam0g
libpango-1.0-0 libpango-perl libpango1.0-0 libpangocairo-1.0-0
libpangoft2-1.0-0 libpangomm-1.4-1v5 libpangox-1.0-0 libpangoxft-1.0-0
libpaper-utils libpaper1 libparams-classify-perl libparams-util-perl
libparams-validate-perl libparse-debianchangelog-perl
libparted-fs-resize0 libparted2 libpath-iterator-rule-perl
libpath-tiny-perl libpathplan4 libpcap0.8 libpcaudio0 libpci3
libpciaccess0 libpcre16-3 libpcre3 libpcre3-dev libpcre32-3
libpcrecpp0v5 libpcsclite1 libpeas-1.0-0 libpeas-common libperl5.24
libperlio-gzip-perl libphonenumber7 libpipeline1 libpixman-1-0
libpkcs11-helper1 libplist3 libplot2c2 libplymouth4 libpng12-0
libpng12-dev libpng16-16 libpod-constants-perl libpolkit-agent-1-0
libpolkit-backend-1-0 libpolkit-gobject-1-0 libpoppler-glib8
libpoppler-qt5-1 libpoppler64 libpopt0 libportaudio2 libportaudiocpp0
libpostproc54 libpotrace0 libprocess-cpp3 libprocps6
libprotobuf-lite10 libprotobuf10 libproxy-tools
libproxy1-plugin-gsettings libproxy1-plugin-networkmanager libproxy1v5
libpsl5 libpstoedit0c2a libptexenc1 libpthread-stubs0-dev
libpulse-mainloop-glib0 libpulse0 libpulsedsp libpwquality-common
libpwquality1 libpython-all-dev libpython-dev libpython-stdlib
libpython2.7 libpython2.7-dev libpython2.7-minimal libpython2.7-stdlib
libpython3-stdlib libpython3.5 libpython3.5-minimal
libpython3.5-stdlib libqdjango-db0 libqgsttools-p1 libqhull-dev
libqhull7 libqmenumodel0 libqmi-glib5 libqmi-proxy libqofono-qt5-0
libqpdf17 libqqwing2v5 libqrupdate-dev libqrupdate1
libqscintilla2-12v5 libqscintilla2-dev libqscintilla2-l10n libqt4-dbus
libqt4-declarative libqt4-designer libqt4-dev libqt4-dev-bin
libqt4-help libqt4-network libqt4-opengl libqt4-opengl-dev
libqt4-qt3support libqt4-script libqt4-scripttools libqt4-sql
libqt4-sql-sqlite libqt4-svg libqt4-test libqt4-xml libqt4-xmlpatterns
libqt5concurrent5 libqt5contacts5 libqt5core5a libqt5dbus5
libqt5feedback5 libqt5gui5 libqt5multimedia5 libqt5multimedia5-plugins
libqt5multimediaquick-p5 libqt5multimediawidgets5 libqt5network5
libqt5opengl5 libqt5organizer5 libqt5positioning5 libqt5printsupport5
libqt5qml5 libqt5quick5 libqt5quicktest5 libqt5sensors5 libqt5sql5
libqt5sql5-sqlite libqt5svg5 libqt5systeminfo5 libqt5test5
libqt5versit5 libqt5webkit5 libqt5widgets5 libqt5x11extras5 libqt5xml5
libqt5xmlpatterns5 libqtcore4 libqtdbus4 libqtgui4 libquadmath0
libraptor2-0 librasqal3 libraw1394-11 libraw16 librbio2 librdf0
libreadline-dev libreadline6 libreadline7
libreoffice-avmedia-backend-gstreamer libreoffice-base-core
libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw
libreoffice-gnome libreoffice-gtk3 libreoffice-help-en-us
libreoffice-impress libreoffice-math libreoffice-ogltrans
libreoffice-pdfimport libreoffice-style-breeze
libreoffice-style-galaxy libreoffice-style-tango libreoffice-writer
libresid-builder0c2a librest-0.7-0 librevenge-0.0-0
librhythmbox-core10 libroken18-heimdal librole-tiny-perl librsvg2-2
librsvg2-bin librsvg2-common librtmp1 librubberband2v5 libruby2.3
libsamplerate0 libsane libsane-common libsane-hpaio libsasl2-2
libsasl2-modules libsasl2-modules-db libsbc1 libscalar-list-utils-perl
libsdl-image1.2 libsdl1.2debian libseccomp2 libsecret-1-0
libsecret-common libselinux1 libsemanage-common libsemanage1
libsensors4 libsepol1 libserd-0-0 libserf-1-1 libsgutils2-2 libshine3
libshout3 libsidplay1v5 libsidplay2v5 libsigc++-2.0-0v5
libsignon-extension1 libsignon-glib1 libsignon-plugins-common1
libsignon-qt5-1 libsigsegv2 libslang2 libsm-dev libsm6 libsmartcols1
libsmbclient libsmbios2v5 libsnapd-glib1 libsnappy1v5 libsndfile1
libsndfile1-dev libsndio6.1 libsnmp-base libsnmp30 libsocket6-perl
libsodium18 libsonic0 libsord-0-0 libsort-key-perl libsoundtouch1
libsoup-gnome2.4-1 libsoup2.4-1 libsoxr0 libspandsp2 libspectre1
libspeechd2 libspeex1 libspeexdsp1 libspqr2 libsqlite3-0 libsratom-0-0
libsrtp0 libss2 libssh-4 libssh-gcrypt-4 libssh2-1 libssl1.0.0
libstartup-notification0 libstdc++-5-dev libstdc++-6-dev libstdc++6
libstemmer0d libstrictures-perl libstring-copyright-perl
libstring-escape-perl libsub-exporter-perl
libsub-exporter-progressive-perl libsub-identify-perl
libsub-install-perl libsub-name-perl libsuitesparse-dev
libsuitesparseconfig4 libsvn1 libswresample2 libswscale4 libsynctex1
libsystemd-dev libsystemd0 libsystemsettings1 libsz2 libtag1v5
libtag1v5-vanilla libtalloc2 libtasn1-6 libtbb2 libtcl8.6 libtdb1
libtelepathy-glib0 libtelepathy-qt4-2 libtelepathy-qt5-0 libtevent0
libtexlua52 libtexluajit2 libtext-charwidth-perl libtext-glob-perl
libtext-iconv-perl libtext-levenshtein-perl libtext-unidecode-perl
libtext-wrapi18n-perl libthai-data libthai0 libtheora0
libthumbnailer-qt1.0 libtie-ixhash-perl libtiff5 libtiff5-dev
libtiffxx5 libtimedate-perl libtimezonemap-data libtimezonemap1
libtinfo-dev libtinfo5 libtk8.6 libtool libtotem-plparser-common
libtotem-plparser18 libtotem0 libtracker-sparql-1.0-0 libtrust-store2
libtry-tiny-perl libtsan0 libtwolame0 libubsan0 libubuntu-app-launch4
libubuntu-application-api3 libubuntu-download-manager-client1
libubuntu-download-manager-common1 libubuntu-location-service3
libubuntu-platform-hardware-api3 libubuntugestures5 libubuntumetrics5
libubuntutoolkit5 libudev-dev libudev1 libudisks2-0 libudm-common1
libudm-priv-common1 libumfpack5 libunicode-utf8-perl libunistring0
libunity-action-qt1 libunity-api0 libunity-control-center1
libunity-core-6.0-9 libunity-gtk2-parser0 libunity-gtk3-parser0
libunity-misc4 libunity-protocol-private0
libunity-scopes-json-def-desktop libunity-scopes1.0
libunity-settings-daemon1 libunity-webapps0 libunity9 libunwind8
libupnp6 libupower-glib3 liburcu4 liburi-perl liburl-dispatcher1
libusageenvironment3 libusb-0.1-4 libusb-1.0-0 libusbmuxd4
libusermetricsinput1 libusermetricsoutput1 libustr-1.0-1 libutempter0
libuuid-perl libuuid1 libv4l-0 libv4lconvert0 libva-drm1 libva-x11-1
libva1 libvariable-magic-perl libvcdinfo0 libvdpau1 libvisio-0.1-1
libvisual-0.4-0 libvlc-bin libvlc5 libvlccore8 libvncclient1
libvncserver1 libvo-aacenc0 libvo-amrwbenc0 libvorbis-dev libvorbis0a
libvorbisenc2 libvorbisfile3 libvpx4 libvte-2.91-0 libvte-2.91-common
libwacom-bin libwacom-common libwacom2 libwavpack1 libwayland-client0
libwayland-cursor0 libwayland-egl1-mesa libwayland-server0
libwbclient0 libwebkit2gtk-4.0-37 libwebkit2gtk-4.0-37-gtk2 libwebp6
libwebpmux2 libwebrtc-audio-processing1 libwhoopsie-preferences0
libwhoopsie0 libwildmidi-config libwildmidi2 libwind0-heimdal
libwinpr-crt0.1 libwinpr-dsparse0.1 libwinpr-environment0.1
libwinpr-file0.1 libwinpr-handle0.1 libwinpr-heap0.1 libwinpr-input0.1
libwinpr-interlocked0.1 libwinpr-library0.1 libwinpr-path0.1
libwinpr-pool0.1 libwinpr-registry0.1 libwinpr-rpc0.1 libwinpr-sspi0.1
libwinpr-synch0.1 libwinpr-sysinfo0.1 libwinpr-thread0.1
libwinpr-utils0.1 libwmf-dev libwmf0.2-7 libwmf0.2-7-gtk libwnck-3-0
libwnck-3-common libwpd-0.10-10 libwpg-0.3-3 libwps-0.4-4 libwrap0
libwww-perl libwww-robotrules-perl libwxbase3.0-0v5 libwxgtk3.0-0v5
libx11-6 libx11-data libx11-dev libx11-protocol-perl libx11-xcb-dev
libx11-xcb1 libx264-148 libx265-110 libxapian30 libxatracker2
libxau-dev libxau6 libxaw7 libxcb-dri2-0 libxcb-dri2-0-dev
libxcb-dri3-0 libxcb-dri3-dev libxcb-glx0 libxcb-glx0-dev
libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-present-dev
libxcb-present0 libxcb-randr0 libxcb-randr0-dev libxcb-render-util0
libxcb-render0 libxcb-render0-dev libxcb-shape0 libxcb-shape0-dev
libxcb-shm0 libxcb-sync-dev libxcb-sync1 libxcb-util1 libxcb-xfixes0
libxcb-xfixes0-dev libxcb-xinerama0 libxcb-xkb1 libxcb-xv0 libxcb1
libxcb1-dev libxcomposite1 libxcursor1 libxdamage-dev libxdamage1
libxdmcp-dev libxdmcp6 libxext-dev libxext6 libxfixes-dev libxfixes3
libxfont1 libxfont2 libxft-dev libxft2 libxi6 libxinerama1
libxkbcommon-x11-0 libxkbcommon0 libxkbfile1 libxklavier16
libxml-libxml-perl libxml-namespacesupport-perl libxml-parser-perl
libxml-sax-base-perl libxml-sax-expat-perl libxml-sax-perl
libxml-twig-perl libxml-xpathengine-perl libxml2 libxml2-dev libxmu6
libxmuu1 libxpm4 libxrandr2 libxrender-dev libxrender1 libxres1
libxshmfence-dev libxshmfence1 libxslt1.1 libxss1 libxt6 libxtables11
libxtst6 libxv1 libxvidcore4 libxvmc1 libxxf86dga1 libxxf86vm-dev
libxxf86vm1 libyajl2 libyaml-0-2 libyaml-libyaml-perl
libyaml-tiny-perl libyelp0 libzbar0 libzeitgeist-1.0-1
libzeitgeist-2.0-0 libzip4 libzmq5 libzmqpp4 libzvbi-common libzvbi0
libzzip-0-13 licensecheck light-themes lightdm lintian
linux-sound-base lmodern locales login logrotate lsb-base lsb-release
lshw lsof ltrace m17n-db m4 make makedev man-db manpages manpages-dev
mawk media-player-info mediascanner2.0 memtest86+ mesa-common-dev
mesa-utils mesa-vdpau-drivers metacity-common mime-support
mir-client-platform-mesa5 mir-graphics-drivers-desktop
mir-platform-graphics-mesa-kms12 mir-platform-graphics-mesa-x12
mir-platform-input-evdev6 mlocate mobile-broadband-provider-info
modemmanager mokutil mount mousetweaks mscompress mtools mtr-tiny
multiarch-support mythes-en-us nano nautilus nautilus-data
nautilus-sendto nautilus-share ncurses-base ncurses-bin net-tools
netbase netcat-openbsd netpbm network-manager network-manager-gnome
network-manager-openvpn network-manager-pptp
network-manager-pptp-gnome notify-osd notify-osd-icons nplan ntfs-3g
nux-tools octave octave-common octave-info onboard onboard-common
onboard-data openjdk-8-jdk openjdk-8-jdk-headless openjdk-8-jre
openjdk-8-jre-headless openjdk-8-source openoffice.org-hyphenation
openprinting-ppds openssh-client openssl openvpn os-prober
overlay-scrollbar overlay-scrollbar-gtk2 oxideqt-codecs-extra p11-kit
p11-kit-modules packagekit packagekit-tools parted passwd patch
patchutils pciutils pcmciautils perl perl-base perl-modules-5.24
perl-openssl-defaults php-common php7.0-cli php7.0-common php7.0-json
php7.0-opcache php7.0-readline pinentry-gnome3 pkg-config
plainbox-provider-checkbox plainbox-provider-resource-generic
plainbox-secure-policy plymouth plymouth-label
plymouth-theme-ubuntu-logo plymouth-theme-ubuntu-text po-debconf
policykit-1 policykit-1-gnome policykit-desktop-privileges
policykit-unity8 poppler-data poppler-utils popularity-contest
portaudio19-dev powermgmt-base ppp pppconfig pppoeconf pptp-linux
preview-latex-style printer-driver-brlaser printer-driver-c2esp
printer-driver-foo2zjs printer-driver-foo2zjs-common
printer-driver-gutenprint printer-driver-hpcups
printer-driver-min12xxw printer-driver-pnm2ppa
printer-driver-postscript-hp printer-driver-ptouch
printer-driver-pxljr printer-driver-sag-gdi printer-driver-splix
procps prosper ps2eps psmisc pstoedit publicsuffix pulseaudio
pulseaudio-module-bluetooth pulseaudio-utils python python-all
python-all-dev python-apt-common python-bzrlib python-cairo
python-cffi-backend python-configobj python-crypto python-cryptography
python-dbus python-dev python-enum34 python-gi python-gpgme
python-httplib2 python-idna python-ipaddress python-keyring
python-keyrings.alt python-launchpadlib python-lazr.restfulclient
python-lazr.uri python-minimal python-oauth python-pip python-pip-whl
python-pkg-resources python-pyasn1 python-scour python-secretstorage
python-setuptools python-simplejson python-six python-talloc python-tk
python-wadllib python-wheel python-xdg python-zope.interface python2.7
python2.7-dev python2.7-minimal python3 python3-apparmor
python3-apparmor-click python3-apport python3-apt python3-aptdaemon
python3-aptdaemon.gtk3widgets python3-blinker python3-brlapi
python3-bs4 python3-cairo python3-cffi-backend python3-chardet
python3-checkbox-support python3-click-package python3-commandnotfound
python3-crypto python3-cryptography python3-cups python3-cupshelpers
python3-dbus python3-debian python3-defer python3-distro-info
python3-distupgrade python3-feedparser python3-gdbm python3-gi
python3-gi-cairo python3-guacamole python3-html5lib python3-httplib2
python3-idna python3-jinja2 python3-jwt python3-keyring
python3-keyrings.alt python3-launchpadlib python3-lazr.restfulclient
python3-lazr.uri python3-libapparmor python3-libertine python3-louis
python3-lxml python3-mako python3-markupsafe python3-minimal
python3-oauth python3-oauthlib python3-padme python3-pexpect
python3-pil python3-pkg-resources python3-plainbox
python3-problem-report python3-psutil python3-ptyprocess
python3-pyasn1 python3-pyatspi python3-pyparsing python3-renderpm
python3-reportlab python3-reportlab-accel python3-requests
python3-secretstorage python3-setuptools python3-simplejson
python3-six python3-software-properties python3-speechd
python3-systemd python3-uno python3-update-manager python3-urllib3
python3-virtualenv python3-wadllib python3-webencodings python3-xdg
python3-xkit python3-xlsxwriter python3-yaml python3-zope.interface
python3.5 python3.5-minimal qdbus qmenumodel-qml qml-module-biometryd
qml-module-io-thp-pyotherside qml-module-ofono
qml-module-pamauthentication0.1 qml-module-qmltermwidget1.0
qml-module-qt-labs-folderlistmodel qml-module-qt-labs-settings
qml-module-qtfeedback qml-module-qtgraphicaleffects
qml-module-qtmultimedia qml-module-qtqml-models2
qml-module-qtqml-statemachine qml-module-qtquick-layouts
qml-module-qtquick-window2 qml-module-qtquick-xmllistmodel
qml-module-qtquick2 qml-module-qtsysteminfo qml-module-qttest
qml-module-ubuntu-components qml-module-ubuntu-components-labs
qml-module-ubuntu-connectivity qml-module-ubuntu-layouts
qml-module-ubuntu-onlineaccounts
qml-module-ubuntu-onlineaccounts-client
qml-module-ubuntu-onlineaccounts2 qml-module-ubuntu-performancemetrics
qml-module-ubuntu-settings-components qml-module-ubuntu-test
qml-module-ubuntu-thumbnailer0.1 qml-module-ubuntu-web qmlscene qpdf
qt-at-spi qt4-linguist-tools qt4-qmake qt5-gtk-platformtheme qtchooser
qtcontact5-galera qtcore4-l10n qtdeclarative5-accounts-plugin
qtdeclarative5-dev-tools qtdeclarative5-gsettings1.0
qtdeclarative5-qtmir-plugin qtdeclarative5-qtquick2-plugin
qtdeclarative5-test-plugin qtdeclarative5-ubuntu-content1
qtdeclarative5-ubuntu-download-manager0.1
qtdeclarative5-ubuntu-settings-components
qtdeclarative5-ubuntu-telephony0.1 qtdeclarative5-ubuntu-ui-extras0.2
qtdeclarative5-ubuntu-ui-toolkit-plugin
qtdeclarative5-unity-action-plugin
qtdeclarative5-unity-notifications-plugin qtmir-desktop
qttranslations5-l10n qtubuntu-appmenutheme qtubuntu-desktop
qtubuntu-print r-base-core r-base-dev r-cran-boot r-cran-class
r-cran-cluster r-cran-codetools r-cran-foreign r-cran-kernsmooth
r-cran-lattice r-cran-littler r-cran-mass r-cran-matrix r-cran-mgcv
r-cran-nlme r-cran-nnet r-cran-rpart r-cran-spatial r-cran-survival
r-doc-html r-recommended rake readline-common remmina remmina-common
remmina-plugin-rdp remmina-plugin-vnc rename repowerd repowerd-data
resolvconf rfkill rhythmbox rhythmbox-data rhythmbox-plugin-zeitgeist
rhythmbox-plugins rsync rsyslog rtkit ruby ruby-bundler
ruby-childprocess ruby-did-you-mean ruby-domain-name ruby-erubis
ruby-ffi ruby-http-cookie ruby-i18n ruby-listen ruby-log4r
ruby-mime-types ruby-minitest ruby-molinillo ruby-net-http-persistent
ruby-net-scp ruby-net-sftp ruby-net-ssh ruby-net-telnet ruby-netrc
ruby-nokogiri ruby-pkg-config ruby-power-assert ruby-rb-inotify
ruby-rest-client ruby-sqlite3 ruby-test-unit ruby-thor ruby-unf
ruby-unf-ext ruby2.3 rubygems-integration runc samba-libs sane-utils
sbsigntool scala scala-library scala-parser-combinators scala-xml
seahorse secureboot-db sed semaphor sensible-utils session-migration
session-shortcuts sgml-base shared-mime-info shim shim-signed shotwell
shotwell-common signon-keyring-extension signon-plugin-oauth2
signon-ui signon-ui-service signon-ui-x11 signond simple-scan
skypeforlinux snapd snapd-login-service sni-qt
software-properties-common software-properties-gtk
sound-theme-freedesktop speech-dispatcher
speech-dispatcher-audio-plugins speech-dispatcher-espeak-ng
spideroakone spotify-client sqlite3 squashfs-tools ssl-cert strace
subversion sudo suru-icon-theme sysdig sysdig-dkms syslinux
syslinux-common syslinux-legacy system-config-printer
system-config-printer-common system-config-printer-gnome
system-config-printer-udev systemd systemd-sysv sysvinit-utils t1utils
tar tcl tcl8.6 tcpd tcpdump telepathy-mission-control-5
telephony-service telnet tex-common tex-gyre texinfo texlive-base
texlive-binaries texlive-extra-utils texlive-font-utils
texlive-fonts-recommended texlive-fonts-recommended-doc
texlive-generic-extra texlive-generic-recommended texlive-lang-french
texlive-latex-base texlive-latex-base-doc texlive-latex-extra
texlive-latex-extra-doc texlive-latex-recommended
texlive-latex-recommended-doc texlive-pictures texlive-pictures-doc
texlive-pstricks texlive-pstricks-doc thermald thumbnailer-service
thunderbird thunderbird-gnome-support thunderbird-locale-en
thunderbird-locale-en-us time tipa tk tk8.6 tk8.6-blt2.5
tone-generator totem totem-common totem-plugins transfig
transmission-common transmission-gtk ttf-ancient-fonts-symbola
ttf-ubuntu-font-family tzdata ubuntu-app-launch
ubuntu-app-launch-tools ubuntu-application-api3-desktop
ubuntu-application-api3-test ubuntu-artwork ubuntu-desktop ubuntu-docs
ubuntu-download-manager ubuntu-drivers-common ubuntu-fan
ubuntu-keyboard-data ubuntu-keyring ubuntu-minimal ubuntu-mobile-icons
ubuntu-mono ubuntu-printing-app ubuntu-release-upgrader-core
ubuntu-release-upgrader-gtk ubuntu-restricted-addons ubuntu-session
ubuntu-settings ubuntu-software ubuntu-sounds ubuntu-standard
ubuntu-system-service ubuntu-system-settings
ubuntu-system-settings-online-accounts ubuntu-terminal-app
ubuntu-touch-sounds ubuntu-ui-toolkit-theme ubuntu-wallpapers
ubuntu-wallpapers-xenial ubuntu-wallpapers-yakkety
ubuntu-wallpapers-zesty ucf udev udisks2 ufw unattended-upgrades unity
unity-accessibility-profiles unity-asset-pool unity-control-center
unity-control-center-faces unity-control-center-signon unity-greeter
unity-greeter-session-broadcast unity-gtk-module-common
unity-gtk2-module unity-gtk3-module unity-lens-applications
unity-lens-files unity-lens-music unity-lens-photos unity-lens-video
unity-plugin-scopes unity-schemas unity-scope-calculator
unity-scope-chromiumbookmarks unity-scope-colourlovers
unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gdrive
unity-scope-home unity-scope-manpages unity-scope-mediascanner2
unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy
unity-scope-video-remote unity-scope-virtualbox unity-scope-yelp
unity-scope-zotero unity-scopes-master-default unity-scopes-runner
unity-services unity-settings-daemon unity-system-compositor
unity-webapps-common unity-webapps-qml unity-webapps-service unity8
unity8-common unity8-desktop-session unity8-private uno-libs3 unzip
update-inetd update-manager update-manager-core update-notifier
update-notifier-common upower upstart ure ureadahead url-dispatcher
url-dispatcher-tools usb-creator-common usb-creator-gtk usb-modeswitch
usb-modeswitch-data usbmuxd usbutils usermetricsservice util-linux
uuid-dev uuid-runtime va-driver-all vagrant vdpau-driver-all
vdpau-va-driver vim vim-common vim-runtime vim-tiny vino virtualbox
virtualbox-dkms virtualbox-qt virtualenv vlc vlc-bin vlc-data vlc-l10n
vlc-plugin-base vlc-plugin-notify vlc-plugin-qt vlc-plugin-samba
vlc-plugin-skins2 vlc-plugin-video-output vlc-plugin-video-splitter
vlc-plugin-visualization wamerican wbritish webapp-container
webbrowser-app wget whiptail whoopsie whoopsie-preferences
wireless-regdb wireless-tools wpasupplicant x11-apps x11-common
x11-session-utils x11-utils x11-xkb-utils x11-xserver-utils
x11proto-core-dev x11proto-damage-dev x11proto-dri2-dev
x11proto-fixes-dev x11proto-gl-dev x11proto-input-dev x11proto-kb-dev
x11proto-render-dev x11proto-xext-dev x11proto-xf86vidmode-dev xauth
xbitmaps xbrlapi xcursor-themes xdg-user-dirs xdg-user-dirs-gtk
xdg-utils xdiagnose xfonts-base xfonts-encodings xfonts-scalable
xfonts-utils xinit xinput xkb-data xmir xml-core xorg xorg-docs-core
xorg-sgml-doctools xserver-common xserver-xorg xserver-xorg-core
xserver-xorg-input-all xserver-xorg-input-evdev
xserver-xorg-input-libinput xserver-xorg-input-synaptics
xserver-xorg-input-wacom xserver-xorg-video-all
xserver-xorg-video-amdgpu xserver-xorg-video-ati
xserver-xorg-video-fbdev xserver-xorg-video-intel
xserver-xorg-video-nouveau xserver-xorg-video-qxl
xserver-xorg-video-radeon xserver-xorg-video-vesa
xserver-xorg-video-vmware xterm xtrans-dev xul-ext-ubufox xvfb xxd
xz-utils yelp yelp-xsl zeitgeist-core zeitgeist-datahub zenity
zenity-common zip zlib1g zlib1g-dev

EOF


# Install packages from list
sudo apt install -y `cat packages.list`

