@echo off
:SourcePrompt
cls
title FNF Automatic Build Environment Setup Script Part 2 - User action required - Download Source Code
echo Skip this option if you use a custom command prompt like git bash, mingw64 or similar. This will only work on regular built in command prompt.
echo Do you want to automatically download the source code for the game /~200 MB?
echo *Optional*
set /p menu="P for Psych, K for Kade, S to skip this step. [P/K/S]"
       if %menu%==P goto SourcePsychPrompt
       if %menu%==p goto SourcePsychPrompt
       if %menu%==K goto SourceKadePrompt
       if %menu%==k goto SourceKadePrompt
	   if %menu%==S goto SkipSource
	   if %menu%==s goto SkipSource
	   
:SourcePsychPrompt
cls
title FNF Automatic Build Environment Setup Script Part 2 - User action required - Psych Download location
echo Where do you want to download the LATEST source? You can move locations later.
echo 1 = C:\GitHub\FNF-PsychEngine (This is the safest bet if you´re unsure.
echo 2 = D:\GitHub\FNF-PsychEngine (If you know you have two drives, you probably want to pick this one).
echo 3 = E:\GitHub\FNF-PsychEngine
echo S = My drive letter isn't listed here or I changed my mind, I don't want to automatically download source code.
echo *Optional*
set /p menu="Read options above and then press corresponding number or letter"
       if %menu%==1 goto SourcePsychC
       if %menu%==2 goto SourcePsychD
       if %menu%==3 goto SourcePsychE
	   if %menu%==S goto SkipSource
	   
:SourcePsychC
cls
title FNF Automatic Build Environment Setup Script Part 2 - Downloading Source Code to C: Drive.
mkdir C:\GitHub
chdir C:\GitHub
echo Created folder at C:\Github and changed script work path to it.
echo Now pulling the latest Psych Engine Source Code to C:\GitHub\FNF-PsychEngine 
git clone https://github.com/ShadowMario/FNF-PsychEngine.git
echo Press any key to continue. 
pause >nul
goto SourcePsychCompilePromptC

:SourcePsychCompilePromptC
cls
title FNF Automatic Build Environment Setup Script Part 2 - User action required - Compile Source Code Prompt.
echo *Optional, recommended*
echo Estimated first time compiling with high-end desktop CPU (Like AMD Ryzen 5/7/9 3000+ series or equivalent Intel i5/i7 9th+ Gen): 5-10 minutes
echo Estimated first time compiling with Mid-tier desktop CPU (Like AMD Ryzen 5/7 1000+ series or Intel i5/i7 4th+ Gen): 10-20 minutes
echo Estimated first time compiling with low-end desktop CPU (Like AMD FX 6000 series or Intel i3/i5 1st+ Gen): 20-40 minutes
echo If using a laptop, with the same series numbers as the desktop cpus, add on 5-10 minutes on the estimated time, possibly more if it's a low energy variant
set /p menu="Do you want to test compile to see if everything is working as it should? /~200 MB [Y/N]"
       if %menu%==Y goto SourcePsychCompileTestC
       if %menu%==y goto SourcePsychCompileTestC
       if %menu%==N goto Information
       if %menu%==n goto Information
	   
:SourcePsychCompileTestC
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compiling Source Code.
chdir C:\GitHub\FNF-PsychEngine
echo Changed script work path to C:\GitHub\FNF-PsychEngine.
echo Running the compile command.
haxelib run lime build windows
echo if build succeeded, press Enter to open up the export folder.
echo Press any key to continue
pause >nul
goto Information

:SourcePsychD
cls
title FNF Automatic Build Environment Setup Script Part 2 - Downloading Source Code to D: Drive.
mkdir D:\GitHub
chdir D:\GitHub
echo Created folder at D:\Github and changed script work path to it.
echo Now pulling the latest Psych Engine Source Code to D:\GitHub\FNF-PsychEngine 
git clone https://github.com/ShadowMario/FNF-PsychEngine.git
echo Press any key to continue. 
pause >nul
goto SourcePsychCompilePromptD

:SourcePsychCompilePromptD
cls
title FNF Automatic Build Environment Setup Script Part 2 - User action required - Compile Source Code Prompt.
echo *Optional, recommended*
echo Estimated first time compiling with high-end desktop CPU (Like AMD Ryzen 5/7/9 3000+ series or equivalent Intel i5/i7 9th+ Gen): 5-10 minutes
echo Estimated first time compiling with Mid-tier desktop CPU (Like AMD Ryzen 5/7 1000+ series or Intel i5/i7 4th+ Gen): 10-20 minutes
echo Estimated first time compiling with low-end desktop CPU (Like AMD FX 6000 series or Intel i3/i5 1st+ Gen): 20-40 minutes
echo If using a laptop, with the same series numbers as the desktop cpus, add on 5-10 minutes on the estimated time, possibly more if it's a low energy variant
set /p menu="Do you want to test compile to see if everything is working as it should? /~200 MB [Y/N]"
       if %menu%==Y goto SourcePsychCompileTestD
       if %menu%==y goto SourcePsychCompileTestD
       if %menu%==N goto Information
       if %menu%==n goto Information
	   
:SourcePsychCompileTestD
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compiling Source Code.
chdir D:\GitHub\FNF-PsychEngine
echo Changed script work path to D:\GitHub\FNF-PsychEngine.
echo Running the compile command.
haxelib run lime build windows
echo if build succeeded, press Enter to open up the export folder.
echo Press any key to continue
pause >nul
goto Information

:SourcePsychE
cls
title FNF Automatic Build Environment Setup Script Part 2 - Downloading Source Code to E: Drive.
mkdir E:\GitHub
chdir E:\GitHub
echo Created folder at E:\Github and changed script work path to it.
echo Now pulling the latest Psych Engine Source Code to E:\GitHub\FNF-PsychEngine 
git clone https://github.com/ShadowMario/FNF-PsychEngine.git
echo Press any key to continue. 
pause >nul
goto SourcePsychCompilePromptE

:SourcePsychCompilePromptE
cls
title FNF Automatic Build Environment Setup Script Part 2 - User action required - Compile Source Code Prompt.
echo *Optional, recommended*
echo Estimated first time compiling with high-end desktop CPU (Like AMD Ryzen 5/7/9 3000+ series or equivalent Intel i5/i7 9th+ Gen): 5-10 minutes
echo Estimated first time compiling with Mid-tier desktop CPU (Like AMD Ryzen 5/7 1000+ series or Intel i5/i7 4th+ Gen): 10-20 minutes
echo Estimated first time compiling with low-end desktop CPU (Like AMD FX 6000 series or Intel i3/i5 1st+ Gen): 20-40 minutes
echo If using a laptop, with the same series numbers as the desktop cpus, add on 5-10 minutes on the estimated time, possibly more if it's a low energy variant
set /p menu="Do you want to test compile to see if everything is working as it should? /~200 MB [Y/N]"
       if %menu%==Y goto SourcePsychCompileTestE
       if %menu%==y goto SourcePsychCompileTestE
       if %menu%==N goto Information
       if %menu%==n goto Information
	   
:SourcePsychCompileTestE
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compiling Source Code.
chdir E:\GitHub\FNF-PsychEngine
echo Changed script work path to E:\GitHub\FNF-PsychEngine.
echo Running the compile command.
haxelib run lime build windows
echo if build succeeded, press Enter to open up the export folder.
echo Press any key to continue
pause >nul
goto Information

:SourceKadePrompt
cls
title FNF Automatic Build Environment Setup Script Part 2 - User action required - Kade Download location
echo Where do you want to download the LATEST source? You can move locations later.
echo 1 = C:\GitHub\Kade-Engine (This is the safest bet if you´re unsure.
echo 2 = D:\GitHub\Kade-Engine (If you know you have two drives, you probably want to pick this one).
echo 3 = E:\GitHub\Kade-Engine
echo S = My drive letter isn't listed here or I changed my mind, I don't want to automatically download source code.
echo *Optional*
set /p menu="Read options above and then press corresponding number or letter"
       if %menu%==1 goto SourceKadeC
       if %menu%==2 goto SourceKadeD
       if %menu%==3 goto SourceKadeE
	   if %menu%==S goto SkipSource
	   
:SourceKadeC
cls
title FNF Automatic Build Environment Setup Script Part 2 - Downloading Source Code to C: Drive.
mkdir C:\GitHub
chdir C:\GitHub
echo Created folder at C:\Github and changed script work path to it.
echo Now pulling the latest Kade Engine Source Code to C:\GitHub\Kade-Engine 
git clone https://github.com/KadeDev/Kade-Engine.git
echo Press any key to continue. 
pause >nul
goto SourceKadeCompilePromptC

:SourceKadeCompilePromptC
cls
title FNF Automatic Build Environment Setup Script Part 2 - User action required - Compile Source Code Prompt.
echo *Optional, recommended*
echo Estimated first time compiling with high-end desktop CPU (Like AMD Ryzen 5/7/9 3000+ series or equivalent Intel i5/i7 9th+ Gen): 5-10 minutes
echo Estimated first time compiling with Mid-tier desktop CPU (Like AMD Ryzen 5/7 1000+ series or Intel i5/i7 4th+ Gen): 10-20 minutes
echo Estimated first time compiling with low-end desktop CPU (Like AMD FX 6000 series or Intel i3/i5 1st+ Gen): 20-40 minutes
echo If using a laptop, with the same series numbers as the desktop cpus, add on 5-10 minutes on the estimated time, possibly more if it's a low energy variant
set /p menu="Do you want to test compile to see if everything is working as it should? /~200 MB [Y/N]"
       if %menu%==Y goto SourceKadeCompileTestC
       if %menu%==y goto SourceKadeCompileTestC
       if %menu%==N goto Information
       if %menu%==n goto Information
	   
:SourceKadeCompileTestC
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compiling Source Code.
chdir C:\GitHub\Kade-Engine
echo Changed script work path to C:\GitHub\Kade-Engine.
echo Running the compile command.
haxelib run lime build windows
echo if build succeeded, press Enter to open up the export folder.
echo Press any key to continue
pause >nul
goto Information

:SourceKadeD
cls
title FNF Automatic Build Environment Setup Script Part 2 - Downloading Source Code to D: Drive.
mkdir D:\GitHub
chdir D:\GitHub
echo Created folder at D:\Github and changed script work path to it.
echo Now pulling the latest Kade Engine Source Code to D:\GitHub\Kade-Engine 
git clone https://github.com/KadeDev/Kade-Engine.git
echo Press any key to continue. 
pause >nul
goto SourceKadeCompilePromptD

:SourceKadeCompilePromptD
cls
title FNF Automatic Build Environment Setup Script Part 2 - User action required - Compile Source Code Prompt.
echo *Optional, recommended*
echo Estimated first time compiling with high-end desktop CPU (Like AMD Ryzen 5/7/9 3000+ series or equivalent Intel i5/i7 9th+ Gen): 5-10 minutes
echo Estimated first time compiling with Mid-tier desktop CPU (Like AMD Ryzen 5/7 1000+ series or Intel i5/i7 4th+ Gen): 10-20 minutes
echo Estimated first time compiling with low-end desktop CPU (Like AMD FX 6000 series or Intel i3/i5 1st+ Gen): 20-40 minutes
echo If using a laptop, with the same series numbers as the desktop cpus, add on 5-10 minutes on the estimated time, possibly more if it's a low energy variant
set /p menu="Do you want to test compile to see if everything is working as it should? /~200 MB [Y/N]"
       if %menu%==Y goto SourceKadeCompileTestD
       if %menu%==y goto SourceKadeCompileTestD
       if %menu%==N goto Information
       if %menu%==n goto Information
	   
:SourceKadeCompileTestD
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compiling Source Code.
chdir D:\GitHub\Kade-Engine
echo Changed script work path to D:\GitHub\Kade-Engine.
echo Running the compile command.
haxelib run lime build windows
echo if build succeeded, press Enter to open up the export folder.
echo Press any key to continue
pause >nul
goto Information

:SourceKadeE
cls
title FNF Automatic Build Environment Setup Script Part 2 - Downloading Source Code to E: Drive.
mkdir E:\GitHub
chdir E:\GitHub
echo Created folder at E:\Github and changed script work path to it.
echo Now pulling the latest Kade Engine Source Code to E:\GitHub\Kade-Engine 
git clone https://github.com/KadeDev/Kade-Engine.git
echo Press any key to continue. 
pause >nul
goto SourceKadeCompilePromptE

:SourceKadeCompilePromptE
cls
title FNF Automatic Build Environment Setup Script Part 2 - User action required - Compile Source Code Prompt.
echo *Optional, recommended*
echo Estimated first time compiling with high-end desktop CPU (Like AMD Ryzen 5/7/9 3000+ series or equivalent Intel i5/i7 9th+ Gen): 5-10 minutes
echo Estimated first time compiling with Mid-tier desktop CPU (Like AMD Ryzen 5/7 1000+ series or Intel i5/i7 4th+ Gen): 10-20 minutes
echo Estimated first time compiling with low-end desktop CPU (Like AMD FX 6000 series or Intel i3/i5 1st+ Gen): 20-40 minutes
echo If using a laptop, with the same series numbers as the desktop cpus, add on 5-10 minutes on the estimated time, possibly more if it's a low energy variant
set /p menu="Do you want to test compile to see if everything is working as it should? /~200 MB [Y/N]"
       if %menu%==Y goto SourceKadeCompileTestE
       if %menu%==y goto SourceKadeCompileTestE
       if %menu%==N goto Information
       if %menu%==n goto Information
	   
:SourceKadeCompileTestE
cls
title FNF Automatic Build Environment Setup Script Part 2 - Compiling Source Code.
chdir E:\GitHub\Kade-Engine
echo Changed script work path to E:\GitHub\Kade-Engine.
echo Running the compile command.
haxelib run lime build windows
echo if build succeeded, press Enter to open up the export folder.
echo Press any key to continue
pause >nul
goto Information

:SkipSource
cls
title FNF Automatic Build Environment Setup Script Part 2 - Skipped Source Download/Compile
echo Skipped Source Code download or/and compiling test. Press any key to continue
pause >nul
goto Information

:Information
cls
title FNF Automatic Build Environment Setup Script Part 2 - Information
echo Now everything that you need should be installed and you're ready to add code or compile the game.
echo Don't use the command "lime test windows" to build, it's outdated and doesn't actually properly compile the game.
echo Instead, use "haxelib run lime build windows" to properly build the game.
echo If you have any issues, and you've REALLY tried to solve it yourself, then you're welcome to contact me on Discord: Lulu#0088
echo Press any key to exit.
pause >nul
exit