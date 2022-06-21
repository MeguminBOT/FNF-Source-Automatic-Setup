@echo off

title FNF Automatic Build Environment Setup Script - Start
echo AutisticLulu's updated version of the Setup.bat 
echo originally created by Tuxsuper @ GameBanana.
echo --
echo Now installs EVERYTHING you need to compile Psych Engine or Kade Engine. It's not fully automatic but almost!
echo --
echo Additionally, it offers two optional steps to attempt making it easier for new people to edit and maintain the code.
echo --
echo Press any key to continue.
pause >nul
goto PromptGit

:PromptGit
cls
title FNF Automatic Build Environment Setup Script - Prompt Git for Windows
echo *Git is required for future steps*
echo --
set /p menu="Would you like to automatically install/update Git for Windows? [Y/N]"
       if %menu%==Y goto InstallGit
       if %menu%==y goto InstallGit
       if %menu%==N goto SkipGit
       if %menu%==n goto SkipGit

:InstallGit 
cls
title FNF Automatic Build Environment Setup Script - Downloading Git for Windows
curl -L -# -O https://github.com/git-for-windows/git/releases/download/v2.36.1.windows.1/Git-2.36.1-64-bit.exe
title FNF Automatic Build Environment Setup Script - Installing Git for Windows
Git-2.36.1-64-bit.exe
del Git-2.36.1-64-bit.exe
echo Deleting setup file...
title FNF Automatic Build Environment Setup Script - Installed Git for Windows
echo -- 
echo Installed Git for Windows.
echo -- 
echo Press any key to continue.
pause >nul
goto PromptHaxe

:SkipGit
cls
title FNF Automatic Build Environment Setup Script - Skipped Git
echo Skipped Git for Windows. 
echo -- 
echo Press any key to continue.
pause >nul
goto PromptHaxe

:PromptHaxe
cls
title FNF Automatic Build Environment Setup Script - Haxe
echo *Haxe is required for future steps*
echo --
echo If building Psych Engine, press [P], this installs Haxe 4.2.5
echo If building Kade Engine, press [K], this installs Haxe 4.1.5
echo --
echo If building Psych Engine but you want to skip Haxe for whatever reason, press [1]
echo If building Kade Engine but you want to skip Haxe for whatever reason, press [2]
echo --
set /p menu="[P] for Psych, [K] for Kade, [1] Psych Skip, [2] Kade Skip. [P/K/1/2]"
       if %menu%==P goto InstallHaxePsych
       if %menu%==p goto InstallHaxePsych
       if %menu%==K goto InstallHaxeKade
       if %menu%==k goto InstallHaxeKade
	   if %menu%==1 goto SkipHaxePsych
	   if %menu%==2 goto SkipHaxeKade
	   
:InstallHaxePsych
cls
title FNF Automatic Build Environment Setup Script - Downloading Haxe 4.2.5
curl -L -# -O https://github.com/HaxeFoundation/haxe/releases/download/4.2.5/haxe-4.2.5-win64.exe
title FNF Automatic Build Environment Setup Script - Installing Haxe 4.2.5
haxe-4.2.5-win64.exe
del haxe-4.2.5-win64.exe
echo Deleting setup file...
title FNF Automatic Build Environment Setup Script - Installed Haxe 4.2.5
echo --
echo Installed Haxe 4.2.5.
echo --
echo Press any key to continue.
pause >nul
goto InstallHaxeLibsPsych

:InstallHaxeKade
cls
title FNF Automatic Build Environment Setup Script - Downloading Haxe 4.1.5
curl -L -# -O https://github.com/HaxeFoundation/haxe/releases/download/4.1.5/haxe-4.1.5-win64.exe
title FNF Automatic Build Environment Setup Script - Installing Haxe 4.1.5
haxe-4.1.5-win64.exe
echo Deleting setup file...
del haxe-4.1.5-win64.exe
title FNF Automatic Build Environment Setup Script - Installed Haxe 4.1.5
echo --
echo Installed Haxe 4.1.5. 
echo --
echo Press any key to continue.
pause >nul
goto InstallHaxeLibsKade

:SkipHaxePsych
cls
title FNF Automatic Build Environment Setup Script - Skipped Haxe 4.2.5
echo Skipped Haxe 4.2.5. 
echo --
echo NOTE: Next step will fail if you don't have Haxe installed.
echo --
echo Press any key to continue.
pause >nul
goto InstallHaxeLibsPsych

:SkipHaxeKade
cls
title FNF Automatic Build Environment Setup Script - Skipped Haxe 4.2.5
echo Skipped Haxe 4.1.5.
echo --
echo NOTE: Next step will fail if you don't have Haxe installed.
echo --
echo Press any key to continue.
pause >nul
goto InstallHaxeLibsKade

:InstallHaxeLibsPsych
cls
title FNF Automatic Build Environment Setup Script - HaxeLibs
echo Press any key to install the required Haxe libraries /~500 MB.
echo --
echo They will be installed to C:/haxelib by default and will set itself to call haxelibs from here by default when compiling.
pause >nul
title FNF Automatic Build Environment Setup Script - Installing Haxe libraries
echo haxelib path is now C:/haxelib
haxelib setup C:/haxelib
echo Installing haxelib libraries...
haxelib install lime
haxelib install openfl
haxelib --never install flixel
haxelib run lime setup flixel
haxelib run lime setup 
haxelib install flixel-tools
haxelib install flixel-ui
haxelib install flixel-addons
haxelib install tjson
haxelib install hxjsonast
haxelib install hscript
haxelib git hxCodec https://github.com/polybiusproxy/hxCodec
haxelib git polymod https://github.com/larsiusprime/polymod.git
haxelib git linc_luajit https://github.com/AndreiRudenko/linc_luajit
haxelib git hscript-ex https://github.com/ianharrigan/hscript-ex
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib install hxcpp > nul
haxelib install hxcpp-debug-server
title FNF Automatic Build Environment Setup Script - Verify Haxe libraries
echo --
echo Press any key to list all packages and verify that they got installed successfully.
echo --
pause >nul
echo --
haxelib list
echo --
title FNF Automatic Build Environment Setup Script - Installed Haxe libraries
echo Press any key to continue.
pause >nul
goto PromptVSCommunity

:InstallHaxeLibsKade
cls
title FNF Automatic Build Environment Setup Script - HaxeLibs
echo Press any key to install the required Haxe libraries /~500 MB.
echo --
echo They will be installed to C:/haxelib by default and will set itself to call haxelibs from here by default when compiling.
pause >nul
title FNF Automatic Build Environment Setup Script - Installing Haxe libraries
echo haxelib path is now C:/haxelib
haxelib setup C:/haxelib
echo Installing haxelib libraries...
haxelib setup C:/haxelib
haxelib install lime 7.9.0
haxelib install openfl
haxelib install flixel
haxelib install flixel-tools
haxelib install flixel-ui
haxelib install hscript
haxelib install flixel-addons
haxelib install actuate
haxelib run lime setup
haxelib run lime setup flixel
haxelib run flixel-tools setup
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit.git
haxelib git hxvm-luajit https://github.com/nebulazorua/hxvm-luajit
haxelib git faxe https://github.com/uhrobots/faxe
haxelib git polymod https://github.com/MasterEric/polymod.git
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git extension-webm https://github.com/KadeDev/extension-webm
title FNF Automatic Build Environment Setup Script - Verify Haxe libraries
echo --
echo Press any key to list all packages and verify that they got installed successfully.
echo --
pause >nul
echo --
haxelib list
echo --
title FNF Automatic Build Environment Setup Script - Installed Haxe libraries
echo Press any key to continue.
pause >nul
goto PromptVSCommunity

:PromptVSCommunity
cls
title FNF Automatic Build Environment Setup Script - Visual Studio 2019
echo *Required for compiling on Windows*
echo --
set /p menu="Would you like to install Visual Studio 2019 and the required components? /~5.5 GB [Y/N]"
       if %menu%==Y goto InstallVSCommunity
       if %menu%==y goto InstallVSCommunity
       if %menu%==N goto SkipVSCommunity
       if %menu%==n goto SkipVSCommunity

:InstallVSCommunity
cls
title FNF Automatic Build Environment Setup Script - Installing Visual Studio Community
curl -# -O https://download.visualstudio.microsoft.com/download/pr/3105fcfe-e771-41d6-9a1c-fc971e7d03a7/8eb13958dc429a6e6f7e0d6704d43a55f18d02a253608351b6bf6723ffdaf24e/vs_Community.exe
vs_Community.exe --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.Windows10SDK.19041 -p --norestart
echo Deleting setup file...
del vs_Community.exe
title FNF Automatic Build Environment Setup Script - Installed Visual Studio Community
echo --
echo Installed Visual Studio 2019, MSVC v142 - VS 2019 C++ x64/x86 build tools and Windows 10 (19041) SDK.
echo --
echo Press any key to continue.
pause >nul
goto PromptVSCode

:SkipVSCommunity
cls
title FNF Automatic Build Environment Setup Script - Skipped Visual Studio 2019
echo Skipped Visual Studio Community 2019. 
echo --
echo Press any key to continue
pause >nul
goto PromptVSCode

:PromptVSCode
cls
title FNF Automatic Build Environment Setup Script - Visual Studio Code IDE
echo Visual Studio Code is an easy to use IDE that will make your life editing code easier.
echo --
echo *Optional but recommended*
echo --
set /p menu="Would you like to install Visual Studio Code and with some extensions to it? /~300 MB [Y/N]"
       if %menu%==Y goto InstallVSCode
       if %menu%==y goto InstallVSCode
       if %menu%==N goto SkipVSCode
       if %menu%==n goto SkipVSCode

:InstallVSCode
cls
title FNF Automatic Build Environment Setup Script - Downloading Visual Studio Code IDE
curl -L -# -O https://az764295.vo.msecnd.net/stable/30d9c6cd9483b2cc586687151bcbcd635f373630/VSCodeUserSetup-x64-1.68.1.exe
title FNF Automatic Build Environment Setup Script - Installing Visual Studio Code IDE
VSCodeUserSetup-x64-1.68.1.exe
echo Deleting setup file...
del VSCodeUserSetup-x64-1.68.1.exe
title FNF Automatic Build Environment Setup Script - Installed Visual Studio Code IDE
echo --
echo Installed Visual Studio Code IDE.
echo --
echo Press any key to install the required extensions.
echo --
pause >nul
title FNF Automatic Build Environment Setup Script - Downloading VScode Extension Pack
curl -L -# -O https://github.com/MeguminBOT/FNF-Source-Automatic-Setup/raw/main/curl/AutisticLulus-VSCode-Extension-Pack.exe
title FNF Automatic Build Environment Setup Script - Installing VScode Extension Pack
AutisticLulus-VSCode-Extension-Pack.exe
echo Deleting setup file...
del AutisticLulus-VSCode-Extension-Pack.exe
title FNF Automatic Build Environment Setup Script - Installed VScode Extension Pack
echo --
echo Installed Visual Studio Code Extension Pack.
echo --
echo Press any key to to continue.
goto PromptGithubDesktop

:SkipVSCode
cls
title FNF Automatic Build Environment Setup Script - Skipped Visual Studio Code IDE
echo Skipped Visual Studio Code and extension pack. 
echo --
echo Press any key to continue
pause >nul
goto PromptGithubDesktop

:PromptGithubDesktop
cls
title FNF Automatic Build Environment Setup Script - Github Desktop
echo GitHub Desktop makes it easier to track what changes you've made and can revert changes in one button press if needed. 
echo It can be used locally only too if desired.
echo --
echo *Optional but recommended*
echo --
set /p menu="Would you like to install GitHub Desktop? /~100 MB [Y/N]"
       if %menu%==Y goto InstallGithubDesktop
       if %menu%==y goto InstallGithubDesktop
       if %menu%==N goto SkipGithubDesktop
       if %menu%==n goto SkipGithubDesktop

:InstallGithubDesktop
cls
title FNF Automatic Build Environment Setup Script - Downloading GitHub Desktop App
curl -L -# -O https://desktop.githubusercontent.com/github-desktop/releases/3.0.2-11fd584c/GitHubDesktopSetup-x64.exe
title FNF Automatic Build Environment Setup Script - Installing GitHub Desktop App
GitHubDesktopSetup-x64.exe
echo Deleting setup file..
del GitHubDesktopSetup-x64.exe
title FNF Automatic Build Environment Setup Script - Installed GitHub Desktop App
echo --
echo Installed GitHub Desktop App. 
echo --
echo Press any key to continue.
pause >nul
goto Information

:SkipGithubDesktop
cls   
title FNF Automatic Build Environment Setup Script - Skipped GitHub Desktop App
echo Skipped GitHub Desktop App. 
echo --
echo Press any key to continue
pause >nul
goto Information

:Information
cls
title FNF Automatic Build Environment Setup Script - Information
echo Now everything that you need should be installed.
echo --
echo Don't use the command "lime test windows" to build, it's outdated and doesn't actually properly compile the game.
echo Instead, use "haxelib run lime build windows" to properly build the game.
echo --
echo Your PC will need to reboot before running any of the optional scripts.
echo --
echo The Setup2.bat script can automatically 
echo download latest stable versions of Psych/Kade source code for you.
echo It also offers to run a compile test to make sure everything is working.
echo --
echo Save any work you have open, then press any key to reboot.
pause >nul
cls
echo Automatically Shutting down in 10 seconds.
SHUTDOWN -r -t 10
