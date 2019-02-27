# Environment Setup

In this chapter we will discuss the installation of Elm.

## Windows/Mac/Linux

Installation of Elm is simple and straight forward.Since elm is to be compiled to javascript. We need to have **node** installed on the target machine.

Follow Tutorialspoint nodejs course to setup node and npm from here  [Node setup](https://www.tutorialspoint.com/nodejs/nodejs_environment_setup.htm)

Install `elm` globally once node and npm is installed .Use  the following command

Note that at time of writing the course elm stable version is  **0.18** , so we will be installing this version

```javascript
npm install -g elm@0.18
```

![start](https://github.com/kannans89/ElmRepo/blob/master/images/01_Installation_step1.PNG?raw=true)

After installation you can verify the version on terminal as below

```javascript

C:\Users\dell>elm --version
0.18.0

```

## Configuring Editor / VisualStudio Code

The examples in this tutorial we will be using VS Code editor. To support elm in vscode the following extension should be installed.Search for *elm* in extension manager as shown.

![vscodeExtension](https://github.com/kannans89/ElmRepo/blob/master/images/04_vscode_extension.PNG?raw=true)

## Elm REPL

REPL stands for read-eval-print-loop.The REPL lets you interact with Elm values and functions in your terminal.
Open terminal and type command `elm repl` . A simple example to add two numbers in REPL is shown below

![REPL](https://github.com/kannans89/ElmRepo/blob/master/images/02_repl.PNG?raw=true)

use command `:exit` to exit REPL and return back to terminal.

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