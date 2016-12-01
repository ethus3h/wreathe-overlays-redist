<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Jorgicio Custom Overlay](#jorgicio-custom-overlay)
  - [Made by Jorge Pizarro Callejas, aka Jorgicio (http://www.jorgicio.net).](#made-by-jorge-pizarro-callejas-aka-jorgicio-httpwwwjorgicionet)
  - [Usage](#usage)
  - [List of packages (at the moment):](#list-of-packages-at-the-moment)
  - [Note for all MATE lovers (READ IT!!!)](#note-for-all-mate-lovers-read-it)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

Jorgicio Custom Overlay
=======================

Made by Jorge Pizarro Callejas, aka Jorgicio (http://www.jorgicio.net).
-----------------------------------------------------------------------

This is a Custom repository made by me.

Usage
-----

First, install Layman from the official Portage tree. Must use the use-flag USE="git" at the moment of installation.

    emerge layman

~~Then, in the section "overlays" in the /etc/layman/layman.cfg, add the following URL:
https://raw.github.com/jorgicio/jorgicio-gentoo/master/jorgicio-repo.xml~~

**That's not necessary!!! Now this overlay is official and added to the list.** Check it [here](http://gpo.zugaina.org/Overlays).

And then, run the following command:

    layman -f -a jorgicio

And you're done.

If you want to refresh the overlay (and all another overlays), just type:

    layman -S

That's all, folks!

List of packages (at the moment):
---------------------------------

 * **app-laptop/laptop-detect:** Application for detecting laptops. Used by [Prey](http://preyproject.com) ([app-laptop/prey](https://packages.gentoo.org/package/app-laptop/prey)), a best known tool for recovering stolen laptops.
 * **gnome-extra/gpaste**: The [Gpaste](http://www.imagination-land.org/posts/2013-10-22-gpaste-3.2.2-released.html) daemon and gnome-shell extension. This is the clipboard for GNOME Shell.
 * **x11-drivers/wizardpen:** Drivers for several Genius tablet models.
 * **net-misc/telegram-cli:** A command-line [Telegram](http://telegram.org) client. Thanks to Vysheng and [his Github Repository](https://github.com/vysheng/tg), specially for the ebuild.
 * **kde-misc/plasmoid-capslockinfo:** Capslock and Numlock information shown in a plasmoid.  
 * **net-wireless/create_ap:** An app to create a wireless access point. Thanks to [its author](https://github.com/oblique).
 * **net-misc/copy:** (Not) Yet another cloud storage service.
 * **media-plugins/srpos-vlc:** A plugin for VLC for restarting from last played.
 * **media-tv/popcorntime-bin:** A good app for watching online movies from torrents. An alternative to Neflix.
 * **dev-util/eclipse-sdk-bin:** The latest version of this IDE: 4.4 Luna.
 * **sys-apps/inxi:** A very detailed hardware view.
 * **net-misc/megasync:** The Official Qt-based app for syncing your [MEGA](http://mega.co.nz) account. It's very well integrated with Dolphin manager. There's also a Nautilus plugin, ~~but I don't support it because I don't use GNOME, so if you want it, create the ebuild yourself (or ask another but me) :P~~ and also did an ebuild for that :D
 * **app-laptop/prey:** A slightly modified version of the ebuild. Originally taken from the official repos, but updated to the latest version (the version in official repos is outdated). It also has integration with laptop-detect.
 * **net-im/telegram-purple:** The Telegram plugin for Pidgin. Now in alpha.
 * **Faba, Moka icons and its variants.** Check them there, on [x11-themes](/x11-themes).
 * **app-i18n/man-pages-es:** The man pages in Spanish, taken from Debian packages.
 * **media-plugins/gimp-paint-studio:** A collection of tools and brushes for making GIMP a very comfortable experience.
 * **dev-python/sexy-python:** Python bindings for libsexy.
 * **kde-misc/raecas:** A KDE Plasmoid for the Spanish-language users who want to query the RAE dictionary (Diccionario de la Real Academia Española).
 * **net-im/telegram-desktop-bin:** The Official Client for Telegram, in its binary version. There's also the dev version.
 * **x11-themes/antergos-wallpapers:** The wallpapers set taken from Antergos repos.
 * **x11-themes/numix-frost-themes:** The well-known [Numix](http://numixproject.org) GTK theme, but Antergos-based.
 * **app-admin/lightdm-gtk-greeter-settings:** The LightDM GTK+ Greeter settings tool, now in Gentoo.
 * **app-editors/visual-studio-code:** The Visual Studio Code, now multiplatform, now in Gentoo.
 * **net-misc/hosty:** An ad-blocking script. Thanks to [juankfree](https://github.com/juankfree/hosty).
 * **Menda themes: Icons (Square and Circle) and GTK+ Themes:** The official [Manjaro](http://manjaro.org) themes.
 * **media-gfx/gyazo:** The [Gyazo](http://gyazo.com) instant grabber.
 * **app-misc/fluxgui:** [f.lux](http://justgetflux.com) client for Linux.
 * **net-misc/dropbox:** A more updater version af Dropbox, now with QT5.
 * **x11-misc/lightdm-another-gtk-greeter:** Yet another LightDM GTK+ greeter, but with GTK+ 3.0.
 * **app-admin/lightdm-another-gtk-greeter-settings:** The settings tool for the package above.
 * **net-wireless/linssid:** The Qt5-based wireless scanning tool for Linux.
 * **media-sound/lollypop:** A new GNOME music player.
 * **app-shells/shellinabox:** Run a web-based terminal emulator with any browser! Forked from [here](https://code.google.com/p/shellinabox/).
 * **games-misc/fortune-mod-dross:** Fortune Mod quotes from [Dross](http://dross.tv).

Note for all MATE lovers (READ IT!!!)
-------------------------------------

For all [MATE](http://mate-desktop.org) lovers, there's another overlay to use latter versions of that desktop environment because Gentoo portage version is pretty old. You can check it [here](../../../mate-jorgicio), instructions included.
Thanks.
