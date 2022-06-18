@echo off
title FNF Automatic Build Environment Setup Script - Start
echo AutisticLulu's updated version of the Setup.bat originally by Tuxsuper@GameBanana.
echo Now installs EVERYTHING you need to compile Psych or Kade Engine. It's not fully automatic but almost!
echo Additionally, it offers two optional steps to attempt making it easier for new people to edit the code.

echo Press any key to continue.
pause >nul
goto PromptGit

:PromptGit
cls
title FNF Automatic Build Environment Setup Script - User action required - Prompt Git for Windows
echo *Git is required for future steps*
set /p menu="Would you like to automatically install/update Git for Windows? [Y/N]"
       if %menu%==Y goto InstallGit
       if %menu%==y goto InstallGit
       if %menu%==N goto SkipGit
       if %menu%==n goto SkipGit

:InstallGit 
cls
title FNF Automatic Build Environment Setup Script - Installing Git for Windows
curl -L -# -O https://github.com/git-for-windows/git/releases/download/v2.36.1.windows.1/Git-2.36.1-64-bit.exe
Git-2.36.1-64-bit.exe
title FNF Automatic Build Environment Setup Script - Installed Git
echo Installed Git for Windows. Press any key to continue.
pause >nul
goto PromptHaxe

:SkipGit
cls
title FNF Automatic Build Environment Setup Script - Skipped Git
echo Skipped Git for Windows. Press any key to continue.
pause >nul
goto PromptHaxe

:PromptHaxe
cls
title FNF Automatic Build Environment Setup Script - User action required - Haxe
echo *Required*
echo If building Psych Engine, press [P], this installs latest Haxe 4.2.5
echo If building Kade Engine, press [K], this installs Haxe 4.1.5
set /p menu="[P] for Psych, [K] for Kade, [1] if you are building Psych later, [2] if you are building Kade later. [P/K/1/2]"
       if %menu%==P goto InstallHaxePsych
       if %menu%==p goto InstallHaxePsych
       if %menu%==K goto InstallHaxeKade
       if %menu%==k goto InstallHaxeKade
	   if %menu%==1 goto SkipHaxePsych
	   if %menu%==2 goto SkipHaxeKade
	   
:InstallHaxePsych
cls
title FNF Automatic Build Environment Setup Script - Installing Haxe 4.2.5
curl -L -# -O https://github.com/HaxeFoundation/haxe/releases/download/4.2.5/haxe-4.2.5-win64.exe
haxe-4.2.5-win64.exe
title FNF Automatic Build Environment Setup Script - Installed Haxe 4.2.5
echo Installed Haxe 4.2.5. Press any key to continue.
pause >nul
goto InstallHaxeLibsPsych

:InstallHaxeKade
cls
title FNF Automatic Build Environment Setup Script - Installing Haxe 4.1.5
curl -L -# -O https://github.com/HaxeFoundation/haxe/releases/download/4.1.5/haxe-4.1.5-win64.exe
haxe-4.1.5-win64.exe
title FNF Automatic Build Environment Setup Script - Installed Haxe 4.1.5
echo Installed Haxe 4.1.5. Press any key to continue.
pause >nul
goto InstallHaxeLibsKade

:SkipHaxePsych
cls
title FNF Automatic Build Environment Setup Script - Skipped Haxe 4.2.5
echo Skipped Haxe 4.2.5. Press any key to continue.
pause >nul
goto InstallHaxeLibsPsych

:SkipHaxeKade
cls
title FNF Automatic Build Environment Setup Script - Skipped Haxe 4.2.5
echo Skipped Haxe 4.1.5. Press any key to continue.
pause >nul
goto InstallHaxeLibsKade

:InstallHaxeLibsPsych
cls
title FNF Automatic Build Environment Setup Script - User action required - HaxeLibs
echo Press any key to install the required Haxe libraries /~500 MB.
echo They will be installed to C:/haxelib by default and will set itself to call haxelibs from here by default when compiling.
echo *Required*
pause >nul
title FNF Automatic Build Environment Setup Script - Installing Haxe libraries
echo Installing haxelib libraries...
haxelib setup C:/haxelib
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
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit
haxelib git hscript-ex https://github.com/ianharrigan/hscript-ex
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib install hxcpp > nul
haxelib install hxcpp-debug-server
title FNF Automatic Build Environment Setup Script - Verify Haxe libraries
echo Press any key to list all packages and verify that they got installed successfully.
pause >nul
haxelib list
title FNF Automatic Build Environment Setup Script - Installed Haxe libraries
echo Press any key to continue.
pause >nul
goto PromptVSCommunity

:InstallHaxeLibsKade
cls
title FNF Automatic Build Environment Setup Script - User action required - HaxeLibs
echo Press any key to install the required Haxe libraries /~500 MB.
echo They will be installed to C:/haxelib by default and will set itself to call haxelibs from here by default when compiling.
echo *Required*
pause >nul
title FNF Automatic Build Environment Setup Script - Installing Haxe libraries
echo Installing haxelib libraries...
haxelib setup C:/haxelib
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
echo Press any key to list all packages and verify that they got installed successfully.
pause >nul
haxelib list
title FNF Automatic Build Environment Setup Script - Installed Haxe libraries
echo Press any key to continue.
pause >nul
goto PromptVSCommunity

:PromptVSCommunity
cls
title FNF Automatic Build Environment Setup Script - User action required - Visual Studio 2019
echo *Required for compiling on Windows*
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
del vs_Community.exe
title FNF Automatic Build Environment Setup Script - Installed Visual Studio Community
echo Installed Visual Studio 2019, MSVC v142 - VS 2019 C++ x64/x86 build tools and Windows 10 (19041) SDK. 
echo Press any key to continue.
pause >nul
goto PromptVSCode

:SkipVSCommunity
cls
title FNF Automatic Build Environment Setup Script - Skipped Visual Studio 2019
echo Skipped Visual Studio Community 2019. Press any key to continue
pause >nul
goto PromptVSCode

:PromptVSCode
cls
title FNF Automatic Build Environment Setup Script - User action required - Visual Studio Code IDE
echo You need Windows 11 or Windows 10 version 1709 or newer to automatically install this, otherwise you have to download it manually.
echo Visual Studio Code is an easy to use IDE that will make your life editing code easier.
echo *Optional*
set /p menu="Would you like to install Visual Studio Code and with some extensions to it? /~300 MB [Y/N]"
       if %menu%==Y goto InstallVSCode
       if %menu%==y goto InstallVSCode
       if %menu%==N goto SkipVSCode
       if %menu%==n goto SkipVSCode

:InstallVSCode
cls
title FNF Automatic Build Environment Setup Script - Install Visual Studio Code IDE.
winget install -e --id Microsoft.VisualStudioCode --source winget
https://az764295.vo.msecnd.net/stable/30d9c6cd9483b2cc586687151bcbcd635f373630/VSCodeUserSetup-x64-1.68.1.exe
title FNF Automatic Build Environment Setup Script - Installed Visual Studio Code IDE.
echo Press any key to continue.
pause >nul
goto PromptGithubDesktop

:SkipVSCode
cls
title FNF Automatic Build Environment Setup Script - Skipped Visual Studio Code IDE
echo Skipped Visual Studio Code. Press any key to continue
pause >nul
goto PromptGithubDesktop

:PromptGithubDesktop
cls
title FNF Automatic Build Environment Setup Script - User action required - Github Desktop
echo You need Windows 11 or Windows 10 version 1709 or newer to automatically install this, otherwise you have to download it manually.
echo GitHub Desktop makes it easier to track what changes you've made and can revert changes in one button press if needed. It can be used locally only too if desired.
echo *Optional*
set /p menu="Would you like to install GitHub Desktop? /~100 MB [Y/N]"
       if %menu%==Y goto InstallGithubDesktop
       if %menu%==y goto InstallGithubDesktop
       if %menu%==N goto SkipGithubDesktop
       if %menu%==n goto SkipGithubDesktop

:InstallGithubDesktop
cls
title FNF Automatic Build Environment Setup Script - Installing GitHub Desktop App
winget install -e --id GitHub.GitHubDesktop --source winget
title FNF Automatic Build Environment Setup Script - Installed GitHub Desktop App
echo Installed GitHub Desktop App. Press any key to continue.
pause >nul
goto Information

:SkipGithubDesktop
cls   
title FNF Automatic Build Environment Setup Script - Skipped GitHub Desktop App
echo Skipped GitHub Desktop App. Press any key to continue
pause >nul
goto Information

:Information
cls
title FNF Automatic Build Environment Setup Script - Information
echo Now everything that you need should be installed.
echo Don't use the command "lime test windows" to build, it's outdated and doesn't actually properly compile the game.
echo Instead, use "haxelib run lime build windows" to properly build the game.
echo You can now run the Setup2.bat script to automatically download latest source code and test compile after rebooting your PC *REQUIRED*
echo Save any work you have open, then press any key to reboot.
pause >nul
cls
echo Shutting down in 10 seconds.
SHUTDOWN -r -t 10


