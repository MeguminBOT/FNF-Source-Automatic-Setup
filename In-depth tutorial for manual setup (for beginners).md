
# Guide Introduction  
You will learn how to build Friday Night Funkin' from Source Code.
I can with confidence say that this will be the easiest and proper written tutorial you've seen on this topic.
## Why another guide?  

All the current have one of these faults: 
-   *Outdated*
-   *Misinformation*
-   *Messy = Hard to follow*
-   *Not properly talking about the specifics*
-   *Overexplaining or overcomplicating stuff that's already easy*  

Even the instructions on the github for each engines source code is usually pretty bad,  
Kade Engines documentation gets my stamp of approval for being decent.  
Psych Engine... let's not talk about their documentation even lol.  
  
Today, I want to solve this by having an all-in-one in-depth guide without overexplaining the small stuff.
Hopefully this will educate complete beginners a bit more so they know exactly what everything is doing.
Let's get into it shall we?

# Software Introduction
This is the long version that give you a general idea what everything does. 
Recommended read for beginners so they get the gist of what they're working with.
 
There will be a shorter condensed version further down without all the explanations.

---
### Command Line Interfaces (CLI)
#### Supported:
-   **Windows 10 Command Prompt**
- **Windows 11 Command Prompt**
-   **Windows 11 Terminal** (A new, improved version of command prompt that is customisable)
- **PowerShell**
- **Mingw64** / **Bash** (We will just call it **bash** from here on)

#### I recommend to use:
**Windows 11: Terminal**
**Windows 10: Command Prompt**

#### Why not PowerShell?
1. It's ugly by default and it's blue coloured = strains your eyes more than other colours *(this is an actual fact)*.
2. More likely to crash due to not being as stable as the reliable older brother Command Prompt.
3. Sometimes doesn't read Windows Environment Paths properly.

*"But i prefer PowerShell :("*
No, you can't prefer it over command prompt when it is the exact same thing but uglier and less stable.

#### About Bash 
You can use **Bash**, it's more of a preference thing *(unlike PowerTrash)*
The biggest difference is the use of `/` and `\`, they're not the same.

Example, let's say you're currently inside `D:\folder\folder` with your CLI, 
the commands would look like this:
cmd: `cd C:\Users\Name\folder`
bash: `cd ~/folder`

---
### Software Prerequisites
While these aren't actually required, they are meant to make it easier and faster to do your work.
- **Git**
> ***Git** is a **distributed version control system** designed to handle everything from small to very large projects with speed and
> efficiency.*

 - **An integrated development environment (IDE)**
> *An **integrated development environment** is a software application that provides comprehensive facilities 
> to computer programmers for software development. 
> An IDE normally consists of at least a source code editor, build automation tools and a debugger*
> 
We will be using **Visual Studio Code** during this guide.


- **GitHub Desktop**
> With **GitHub Desktop**, you can interact with GitHub using a GUI instead of the command line or a web browser.
> You can use GitHub Desktop to complete most Git commands from your desktop, such as pushing to, pulling from, and cloning remote repositories, attributing commits, and creating pull requests, with visual confirmation of changes.

While I heavily recommend installing Git, 
GitHub Desktop is actually more of a preference of mine.





## Prerequisites for Compiling

 - **Haxe**
> ***Haxe** is an open source high-level strictly-typed programming language with a fast optimizing cross-compiler.*  
> ***Haxe** can build cross-platform applications targeting **JavaScript**, **C++**, **C#**, **Java**, **JVM**, **Python**, **Lua**, **PHP**, **Flash**, and allows access to each platform's native capabilities*
 
 - **Lime** *(HaxeLib)*
> ***Lime** is a flexible and lightweight **Haxe** framework for cross-platform development*
> ***Lime** can handle libraries for graphics, sound, input and windowing.*
> ***Lime** provides hardware-accelerated rendering of vector graphics*

 - **HaxeFlixel** *(HaxeLib)*
> ***HaxeFlixel** is a 2D game engine based on **OpenFL** that delivers cross-platform games.*

 - **OpenFL** *(HaxeLib)*
 >  ***OpenFL** is an open-source framework designed to fully mirror the **Flash API**, however it is also used to extend upon that API.
 >  **OpenFL** uses the **Lime** library for low-level rendering and provides **HaxeFlixel** with GPU accelerated texture batching*

These make up the base of Friday Night Funkin.
