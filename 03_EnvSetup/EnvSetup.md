# Environment Setup

This chapter discusses steps to install Elm on Windows, Mac and Linux platforms.

## Local Environment Setup

### Step 1: Install **node**

Since `elm` is compiled to Javascript,the target machine should have **node** installed.
Refer to TutorialsPoint nodejs course for steps to setup **node** and **npm** [Node setup](https://www.tutorialspoint.com/nodejs/nodejs_environment_setup.htm)

### Step 2: Install `elm`

Execute the following command on the terminal to install `elm`.Note that the stable version of `elm` was  **0.18** at time of writing this course.

```javascript
npm install -g elm@0.18
```

![start](https://github.com/kannans89/ElmRepo/blob/master/images/01_Installation_step1.PNG?raw=true)

After installation,execute the following command to verify the version of `elm`

```javascript
C:\Users\dell>elm --version
0.18.0
```

### Step 3:Install the Editor

The development environment used here is Visual Studio Code (Windows platform).

Visual Studio Code is an open source IDE from Visual Studio. It is available for Mac OS X, Linux and Windows platforms. VScode is available at [Visual Studio Code](https://code.visualstudio.com/)

**Installation on Windows**

1. Download [Visual Studio Code](https://code.visualstudio.com/) for Windows.  

2. Double-click on VSCodeSetup.exe to launch the setup process.This will only take a minute.

 <!--Screenshot here -->
 ![vscode](
https://www.tutorialspoint.com/typescript/images/setup_wizard.jpg
)
  
3.  You may directly traverse to the file’s path by right clicking on  File → Open in command prompt.Similarly, the Reveal in  Explorer option shows the file in the File Explorer.

 <!--Include screenshot for elm file -->
  ![travers_path](
 https://www.tutorialspoint.com/typescript/images/traverse_files_path.jpg)
 
**Installation on Mac OS X**

Visual Studio Code’s Mac OS X specific installation guide can be found at [VSCode Installation-MAC](https://code.visualstudio.com/Docs/editor/setup)

**Installation on Linux**

Visual Studio Code’s Linux specific installation guide can be found at [VSCode Installation-Linux](https://code.visualstudio.com/Docs/editor/setup)

### Step 4: Install the `elm` Extension

Install the `elm` extension in VSCode as shown below. 

![vscodeExtension](https://github.com/kannans89/ElmRepo/blob/master/images/04_vscode_extension.PNG?raw=true)


## Elm REPL

REPL stands for Read Eval Print Loop and it represents a computer environment like a Windows console or Unix/Linux shell where a command is entered and the system responds with an output in an interactive mode. 

Elm comes bundled with a REPL environment. It performs the following tasks − <!--verify if explanations are correct-->

- Read − Reads user's input, parses the input into elm data-structure, and stores in memory.
- Eval − Takes and evaluates the data structure.
- Print − Prints the result.
- Loop − Loops the above command until the user exits. Use the command `:exit` to exit REPL and return back to the terminal.

Open terminal and type command `elm repl` . A simple example to add two numbers in REPL is shown below: 

![REPL](https://github.com/kannans89/ElmRepo/blob/master/images/02_repl.PNG?raw=true)



<!--

If you are on Mac or Windows, you can use the installers to get everything set up easily

## Windows

To install elm on windows we need to download the windows executable from [here](https://github.com/elm/compiler/releases/download/0.19.0/installer-for-windows.exe)

Double click the **installer-for-windows.exe** file ,the following window will appear.

![start](https://github.com/kannans89/ElmRepo/blob/master/images/01_Installation_step1.PNG?raw=true)

Follow the simple steps , keep default setting and once the wizard completes installation you will see the completed screen as shown below

![complete](https://github.com/kannans89/ElmRepo/blob/master/images/02_Installation.PNG?raw=true)

you can verify after installation by opening the windows terminal and typing command `elm repl` as shown

![elm repl](https://github.com/kannans89/ElmRepo/blob/master/images/03_elm_repl.PNG?raw=true)

## Mac

To install elm in mac first we need to download the installer for mac from [here](https://github.com/elm/compiler/releases/download/0.19.0/installer-for-mac.pkg)

Once you launch the installer you will get following screen

![start](https://github.com/kannans89/ElmRepo/blob/master/images/01_Installation_step1.PNG?raw=true)

complete the installation wizard by selecting the default settings.


 -->
