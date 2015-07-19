-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Applications_Data_Management"] = {
	{"LibreOffice Base","/usr/bin/libreoffice --base","/usr/share/icons/hicolor/32x32/apps/libreoffice-base.xpm"},
}
Debian_menu["Debian_Applications_Editors"] = {
	{"GVIM","/usr/bin/vim.gtk -g -f","/usr/share/pixmaps/vim-32.xpm"},
	{"Nano", "x-terminal-emulator -e ".."/bin/nano","/usr/share/nano/nano-menu.xpm"},
}
Debian_menu["Debian_Applications_Emulators"] = {
	{"VirtualBox","/usr/bin/virtualbox","/usr/share/pixmaps/virtualbox.xpm"},
}
Debian_menu["Debian_Applications_File_Management"] = {
	{"Thunar","/usr/bin/thunar"},
}
Debian_menu["Debian_Applications_Graphics"] = {
	{"Hugin","/usr/bin/hugin"},
	{"LibreOffice Draw","/usr/bin/libreoffice --draw","/usr/share/icons/hicolor/32x32/apps/libreoffice-draw.xpm"},
	{"PTBatcherGUI","/usr/bin/PTBatcherGUI"},
	{"The GIMP","/usr/bin/gimp","/usr/share/pixmaps/gimp.xpm"},
}
Debian_menu["Debian_Applications_Network_Communication"] = {
	{"Icedove Mail","icedove","/usr/share/pixmaps/icedove.xpm"},
	{"Mutt", "x-terminal-emulator -e ".."/usr/bin/mutt","/usr/share/pixmaps/mutt.xpm"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet.netkit"},
}
Debian_menu["Debian_Applications_Network_Web_Browsing"] = {
	{"Iceweasel","iceweasel","/usr/share/pixmaps/iceweasel.xpm"},
	{"w3m", "x-terminal-emulator -e ".."/usr/bin/w3m /usr/share/doc/w3m/MANUAL.html"},
}
Debian_menu["Debian_Applications_Network"] = {
	{ "Communication", Debian_menu["Debian_Applications_Network_Communication"] },
	{ "Web Browsing", Debian_menu["Debian_Applications_Network_Web_Browsing"] },
}
Debian_menu["Debian_Applications_Office"] = {
	{"LibreOffice Calc","/usr/bin/libreoffice --calc","/usr/share/icons/hicolor/32x32/apps/libreoffice-calc.xpm"},
	{"LibreOffice Impress","/usr/bin/libreoffice --impress","/usr/share/icons/hicolor/32x32/apps/libreoffice-impress.xpm"},
	{"LibreOffice Writer","/usr/bin/libreoffice --writer","/usr/share/icons/hicolor/32x32/apps/libreoffice-writer.xpm"},
}
Debian_menu["Debian_Applications_Programming"] = {
	{"Monodoc","/usr/bin/monodoc","/usr/share/pixmaps/monodoc.png"},
	{"Python (v2.7)", "x-terminal-emulator -e ".."/usr/bin/python2.7","/usr/share/pixmaps/python2.7.xpm"},
	{"Python (v3.4)", "x-terminal-emulator -e ".."/usr/bin/python3.4","/usr/share/pixmaps/python3.4.xpm"},
	{"Tclsh8.6", "x-terminal-emulator -e ".."/usr/bin/tclsh8.6"},
	{"TkWish8.6","x-terminal-emulator -e /usr/bin/wish8.6"},
}
Debian_menu["Debian_Applications_Science_Mathematics"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
	{"LibreOffice Math","/usr/bin/libreoffice --math","/usr/share/icons/hicolor/32x32/apps/libreoffice-math.xpm"},
	{"SpeedCrunch","/usr/bin/speedcrunch","/usr/share/pixmaps/speedcrunch.xpm"},
}
Debian_menu["Debian_Applications_Science"] = {
	{ "Mathematics", Debian_menu["Debian_Applications_Science_Mathematics"] },
}
Debian_menu["Debian_Applications_Shells"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
}
Debian_menu["Debian_Applications_Sound"] = {
	{"pavucontrol","/usr/bin/pavucontrol"},
}
Debian_menu["Debian_Applications_System_Administration"] = {
	{"Debian Task selector", "x-terminal-emulator -e ".."su-to-root -c tasksel"},
	{"Editres","editres"},
	{"GNOME partition editor","su-to-root -X -c /usr/sbin/gparted","/usr/share/pixmaps/gparted.xpm"},
	{"Reportbug", "x-terminal-emulator -e ".."/usr/bin/reportbug --exit-prompt"},
	{"Reportbug (GTK+)","/usr/bin/reportbug --exit-prompt --ui gtk2"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Applications_System_Hardware"] = {
	{"NVIDIA Settings","/usr/lib/nvidia/current/nvidia-settings"},
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Applications_System_Monitoring"] = {
	{"LXTask","/usr/bin/lxtask"},
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xev","x-terminal-emulator -e xev"},
}
Debian_menu["Debian_Applications_System_Package_Management"] = {
	{"Aptitude Package Manager (text)", "x-terminal-emulator -e ".."/usr/bin/aptitude-curses"},
}
Debian_menu["Debian_Applications_System_Security"] = {
	{"keepass2","/usr/bin/keepass2"},
}
Debian_menu["Debian_Applications_System"] = {
	{ "Administration", Debian_menu["Debian_Applications_System_Administration"] },
	{ "Hardware", Debian_menu["Debian_Applications_System_Hardware"] },
	{ "Monitoring", Debian_menu["Debian_Applications_System_Monitoring"] },
	{ "Package Management", Debian_menu["Debian_Applications_System_Package_Management"] },
	{ "Security", Debian_menu["Debian_Applications_System_Security"] },
}
Debian_menu["Debian_Applications_Terminal_Emulators"] = {
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
}
Debian_menu["Debian_Applications_Video"] = {
	{"VLC media player","/usr/bin/qvlc","/usr/share/icons/hicolor/32x32/apps/vlc.xpm"},
}
Debian_menu["Debian_Applications_Viewers"] = {
	{"digikam","/usr/bin/digikam"},
	{"Evince","/usr/bin/evince","/usr/share/pixmaps/evince.xpm"},
	{"Mirage","mirage"},
}
Debian_menu["Debian_Applications"] = {
	{ "Data Management", Debian_menu["Debian_Applications_Data_Management"] },
	{ "Editors", Debian_menu["Debian_Applications_Editors"] },
	{ "Emulators", Debian_menu["Debian_Applications_Emulators"] },
	{ "File Management", Debian_menu["Debian_Applications_File_Management"] },
	{ "Graphics", Debian_menu["Debian_Applications_Graphics"] },
	{ "Network", Debian_menu["Debian_Applications_Network"] },
	{ "Office", Debian_menu["Debian_Applications_Office"] },
	{ "Programming", Debian_menu["Debian_Applications_Programming"] },
	{ "Science", Debian_menu["Debian_Applications_Science"] },
	{ "Shells", Debian_menu["Debian_Applications_Shells"] },
	{ "Sound", Debian_menu["Debian_Applications_Sound"] },
	{ "System", Debian_menu["Debian_Applications_System"] },
	{ "Terminal Emulators", Debian_menu["Debian_Applications_Terminal_Emulators"] },
	{ "Video", Debian_menu["Debian_Applications_Video"] },
	{ "Viewers", Debian_menu["Debian_Applications_Viewers"] },
}
Debian_menu["Debian_CrossOver"] = {
	{"CrossOver","/opt/cxoffice/bin/crossover","/opt/cxoffice/share/icons/32x32/crossover.png"},
	{"Uninstall CrossOver Linux","/opt/cxoffice/bin/cxuninstall","/opt/cxoffice/share/icons/32x32/cxuninstall.png"},
}
Debian_menu["Debian_Games"] = {
	{"HattrickOrganizer! 1.433-2501","/usr/bin/ho1",},
}
Debian_menu["Debian_Help"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
}
Debian_menu["Debian_Windows_Applications_Microsoft_Office_Microsoft_Office_2010_Tools"] = {
	{"Digital Certificate for VBA Projects","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Office+2010+Tools/Digital+Certificate+for+VBA+Projects.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/E723_misc.15.png"},
	{"Microsoft Clip Organizer","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Office+2010+Tools/Microsoft+Clip+Organizer.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/FA41_cagicon.0.png"},
	{"Microsoft Office 2010 Language Preferences","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Office+2010+Tools/Microsoft+Office+2010+Language+Preferences.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/E723_misc.5.png"},
	{"Microsoft Office 2010 Upload Center","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Office+2010+Tools/Microsoft+Office+2010+Upload+Center.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/0A9A_msouc.0.png"},
	{"Microsoft Office Picture Manager","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Office+2010+Tools/Microsoft+Office+Picture+Manager.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/4000_oisicon.0.png"},
}
Debian_menu["Debian_Windows_Applications_Microsoft_Office"] = {
	{"Microsoft Access 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Access+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/CE2A_accicons.0.png"},
	{"Microsoft Excel 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Excel+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/284C_xlicons.0.png"},
	{"Microsoft InfoPath Designer 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+InfoPath+Designer+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/825D_inficon.3.png"},
	{"Microsoft InfoPath Filler 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+InfoPath+Filler+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/825D_inficon.0.png"},
	{ "Microsoft Office 2010 Tools", Debian_menu["Debian_Windows_Applications_Microsoft_Office_Microsoft_Office_2010_Tools"] },
	{"Microsoft OneNote 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+OneNote+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/A3D7_joticon.0.png"},
	{"Microsoft Outlook 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Outlook+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/DAE7_outicon.0.png"},
	{"Microsoft PowerPoint 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+PowerPoint+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/1CE1_pptico.0.png"},
	{"Microsoft Publisher 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Publisher+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/31FC_pubs.0.png"},
	{"Microsoft SharePoint Workspace 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+SharePoint+Workspace+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/7F63_grvicons.0.png"},
	{"Microsoft Word 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office/Microsoft+Word+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/0575_wordicon.0.png"},
}
Debian_menu["Debian_Windows_Applications_SharePoint"] = {
	{"Microsoft SharePoint Workspace 2010","\"/home/andres/.cxoffice/Microsoft_Office_2010/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/SharePoint/Microsoft+SharePoint+Workspace+2010.lnk\"","/home/andres/.cxoffice/Microsoft_Office_2010/windata/cxmenu/icons/hicolor/32x32/apps/7F63_grvicons.0.png"},
}
Debian_menu["Debian_Windows_Applications"] = {
	{ "Microsoft Office", Debian_menu["Debian_Windows_Applications_Microsoft_Office"] },
	{ "SharePoint", Debian_menu["Debian_Windows_Applications_SharePoint"] },
}
Debian_menu["Debian"] = {
	{ "Applications", Debian_menu["Debian_Applications"] },
	{ "CrossOver", Debian_menu["Debian_CrossOver"] },
	{ "Games", Debian_menu["Debian_Games"] },
	{ "Help", Debian_menu["Debian_Help"] },
	{ "Windows Applications", Debian_menu["Debian_Windows_Applications"] },
}
