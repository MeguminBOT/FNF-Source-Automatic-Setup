@echo off

:SourcePrompt
cls
title FNF Automatic Build Environment Setup Script Part 2 - Download Source Code
echo NOTE: This script will only work on the regular built in command prompt. 
echo Git bash, mingw64, PowerShell or similar is unsupported!
echo --
echo Do you want to automatically download the source code for the game /~200 MB?
set /p menu="P for Psych, K for Kade [P/K/S]"
       if %menu%==P goto SourcePsych
       if %menu%==p goto SourcePsych
       if %menu%==K goto SourceKade
       if %menu%==k goto SourceKade
	   if %menu%==S goto SkipSource
	   if %menu%==s goto SkipSource
	   
:SourcePsych
cls
title FNF Automatic Build Environment Setup Script Part 2 - Downloading Source Code to C: Drive.
mkdir C:\GitHub
chdir C:\GitHub
echo Created folder at C:\Github and changed script work path to it.
echo --
echo Now downloading the latest stable Psych Engine Source Code to C:\GitHub\
echo This can take several minutes, please be patient.
curl -L -# -O https://github.com/ShadowMario/FNF-PsychEngine/archive/refs/tags/0.6.3.zip
echo --
echo Extracting the Source Code...
tar -xvf 0.6.3.zip -C C:\GitHub
echo --
echo Deleting the zip file...
del 0.6.3.zip
echo --
echo Press any key to continue. 
pause >nul
goto SourcePsychCompilePrompt

:SourcePsychCompilePrompt
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compile Source Code Prompt.
echo *Optional, recommended*
echo --
echo Estimated first time compiling with high-end desktop CPU (Like AMD Ryzen 5/7/9 3000+ series or equivalent Intel i5/i7 9th+ Gen): 5-10 minutes
echo Estimated first time compiling with Mid-tier desktop CPU (Like AMD Ryzen 5/7 1000+ series or Intel i5/i7 4th+ Gen): 10-20 minutes
echo Estimated first time compiling with low-end desktop CPU (Like AMD FX 6000 series or Intel i3/i5 1st+ Gen): 20-40 minutes
echo --
echo If using a laptop, with the same series numbers as the desktop cpus, add on 10-20 minutes on the estimated time, possibly more if it's a low energy variant
echo --
set /p menu="Do you want to test compile to see if everything is working as it should? /~200 MB [Y/N]"
       if %menu%==Y goto SourcePsychCompileTest
       if %menu%==y goto SourcePsychCompileTest
       if %menu%==N goto Information
       if %menu%==n goto Information
	   
:SourcePsychCompileTest
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compiling Source Code.
chdir C:\GitHub\FNF-PsychEngine-0.6.3
echo Changed script work path to C:\GitHub\FNF-PsychEngine-0.6.3
echo --
echo Running the compile command
echo --
haxelib run lime build windows
echo if build succeeded, press Enter to open up the export folder.
echo --
echo Press any key to continue
pause >nul
goto Information
	   
:SourceKade
cls
title FNF Automatic Build Environment Setup Script Part 2 - Downloading Source Code to C: Drive.
mkdir C:\GitHub
chdir C:\GitHub
echo Created folder at C:\Github and changed script work path to it.
echo --
echo Now downloading the latest stable Kade Engine Source Code to C:\GitHub\
echo This can take several minutes, please be patient.
curl -L -# -O https://github.com/KadeDev/Kade-Engine/archive/refs/tags/1.8.zip
echo --
echo Extracting the Source Code...
tar -xvf 1.8.zip -C C:\GitHub
echo --
echo Deleting the zip file...
del 1.8.zip
echo --
echo Press any key to continue. 
pause >nul
goto SourceKadeCompilePrompt

:SourceKadeCompilePrompt
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compile Source Code Prompt.
echo *Optional, recommended*
echo --
echo Estimated first time compiling with high-end desktop CPU (Like AMD Ryzen 5/7/9 3000+ series or equivalent Intel i5/i7 9th+ Gen): 5-10 minutes
echo Estimated first time compiling with Mid-tier desktop CPU (Like AMD Ryzen 5/7 1000+ series or Intel i5/i7 4th+ Gen): 10-20 minutes
echo Estimated first time compiling with low-end desktop CPU (Like AMD FX 6000 series or Intel i3/i5 1st+ Gen): 20-40 minutes
echo --
echo If using a laptop, with the same series numbers as the desktop cpus, add on 10-20 minutes on the estimated time, possibly more if it's a low energy variant
echo --
set /p menu="Do you want to test compile to see if everything is working as it should? /~200 MB [Y/N]"
       if %menu%==Y goto SourceKadeCompileTest
       if %menu%==y goto SourceKadeCompileTest
       if %menu%==N goto Information
       if %menu%==n goto Information
	   
:SourceKadeCompileTest
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compiling Source Code.
chdir C:\GitHub\Kade-Engine-1.8
echo Changed script work path to C:\GitHub\Kade-Engine-1.8
echo --
echo Running the compile command
echo --
haxelib run lime build windows
echo if build succeeded, press Enter to open up the export folder.
echo --
echo Press any key to continue
pause >nul
goto Information

:SkipSource
cls
title FNF Automatic Build Environment Setup Script Part 2 - Skipped Source Download/Compile
echo Skipped Source Code download or/and compiling test. 
echo --
echo Press any key to continue
pause >nul
goto Information

:Information
cls
title FNF Automatic Build Environment Setup Script Part 2 - Information
echo Use "haxelib run lime build windows" in the root folder of your source code for future builds.
echo --
echo If you have any issues after using both script 1 and 2
echo and you carefully read the instructions in the scripts
echo and tried to compile unmodified source code with this script,
echo then you're allowed to contact me on Discord Lulu#0088
echo --
echo Press any key to exit.
pause >nul
exit
