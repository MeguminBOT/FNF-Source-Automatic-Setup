# The Automated FNF Build Environment Setup
<img alt="github/funnyimagelol.png" src="github/funnyimagelol.png" width="640"/>

### Table of Contents
  - [Introduction](#introduction)
  - [Supported Engines](#supported-engines)
  - [Supported Operating Systems](#supported-operating-systems)
  - [Supported Terminals](#supported-terminals)
  - [What EXACTLY is the script installing?](#what-exactly-is-the-script-installing)
  - [If you are paranoid over executable scripts on the internet](#if-you-are-paranoid-over-executable-scripts-on-the-internet)
  - [Having Issues?](#having-issues)

---

### Introduction
Automatically setup everything you need to compile FNF from source,   
From Prerequisites, downloading source code to the compiling process,     
It also deletes the setup files after they've been installed!

Well, in reality... it's semi-automatic, you still need to interact with the script window to confirm/skip or select an option.  
The downloading the correct things part and configuring the build environment is fully automatic.

---

### Supported Engines
- Psych Engine
- Kade Engine

_Probably supports most forks Psych too unless they require extra libraries_

---

### Supported Operating Systems

- Windows 10 v1603 or higher (64-bit version only)
- Windows 11

---

### Supported Terminals
- Windows 10/11 Command Prompt
- Windows 11 Terminal

_PowerShell, Mingw64, Git Bash or similar are **NOT** supported_

---

### What EXACTLY is the script installing?

 - **Git** (**Required)*
 - **Haxe** (**Required)*
	- 4.1.5 for Kade Engine
	- 4.2.5 for Psych Engine
 - **Haxelibs** (**Required)*
	- Haxelib actuate
	- Haxelib box2d
	- Haxelib discord_rpc
	- Haxelib flixel-addons
	- Haxelib flixel-tools
	- Haxelib flixel-ui
	- Haxelib flixel
	- Haxelib hxCodec
	- Haxelib hscript
	- Haxelib hscript-ex
	- Haxelib hxcpp
	- Haxelib hxcpp-debug-server
	- Haxelib hxjsonast
	- Haxelib layout
	- Haxelib linc_luajit
	- Haxelib lime
	- Haxelib openfl
	- Haxelib polymod
	- Haxelib systools
	- Haxelib tjson
 - **Visual Community 2019** (**Required)*
 - **Visual Community Components** (**Required)*
     - MSVC v142 - VS 2019 C++ x64/x86 build tools
     - Windows 10 SDK - 10.0.19041.0
 - **Visual Code** *(? Optional)*
 - **Visual Code Extensions** *(? Optional)*
	- CodeDox
	- Flash Debugger
	- HashLink Debugger
	- Haxe
	- Haxe Blocks
	- Haxe Checkstyle
	- Haxe Extension Pack
	- Haxe JSX
	- Haxe Manager
	- HXCPP Debugger
	- Lime/OpenFL
	- Prettier - Code Formatter
	- Tabnine
	- XML Tools
 - **GitHub for Desktop** *(? Optional)*
 - **Source Code** *(? Optional)*
	 - Psych Engine 0.5.2h
	 - Kade Engine 1.8

_After that, you can start making your desired code changes._

---

### If you are paranoid over executable scripts on the internet
You can check the code here on GitHub and see exactly where it downloads the software from and what it's installing. 
You could check VirusTotal.com too but that's useless for most bat scripts unless they invoke some real sketchy stuff, which this doesn't.

---
### Having Issues?
Having troubles with the script/automated compiling test?
Or perhaps you found a bug?

Post a new issue [here](https://github.com/MeguminBOT/FNF-Source-Automatic-Setup/issues) and I'll get back to you as fast as I can

---
### Future Plans
[] Support OSX and Linux with automated scripts
[] Support PowerShell and Mingw64/Git Bash
[] Support more engines
[] Make the script smarter instead of manually having to call everything over and over.
[] Graphical User Interface maybe?
[] Wiki: lists of required dependencies, what differs from each engines setup and why?
[] Wiki: Manual setup guide
