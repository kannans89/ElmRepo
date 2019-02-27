# Environment Setup

In this chapter we will discuss the installation of Elm in

1. Windows
2. Mac
3. Anywhere(using node/npm)

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

## Windows/Mac/Linux/AnyWhere

If you are on Mac or Windows, you can use the installers for easy installation. Another option to install elm in any platform is using *node and npm*.

Follow tutorialspoint nodejs course to setup node and npm from here  [Node setup](https://www.tutorialspoint.com/nodejs/nodejs_environment_setup.htm)

Install `elm` globally once node and npm is installed .Use  the following command
`npm install -g elm`

## Configuring Editor / VisualStudio Code

The examples in this tutorial we will be using VS Code editor. To support elm in vscode the following extension should be installed.Search for *elm* in extension manager as shown.

(https://github.com/kannans89/ElmRepo/blob/master/images/04_vscode_extension.PNG?raw=true)