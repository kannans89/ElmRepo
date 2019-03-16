# Basic Syntax

This chapter discusses how to write a simple helloworld program in elm.

## Step 1: Create a directory HelloApp in VSCode. Create a file - Hello.elm in this directory. <!--explain-->
## Step 2: Install the necessary elm packages
The package manager in elm is `elm-package`. Install the `elm-lang/html` package. This package will help us to display output of elm code in the browser.  
Traverse to the HelloApp project folder by right clicking on File → Open in command prompt in VSCode. Execute the following command in the terminal window:
<!--update the project path-->
`C:\Users\dell\Elm\HelloApp> elm-package install elm-lang/html`
The following message will appear once the package is installed successfully.
<!-- include installation successful ss-->

The following files/folders are added to the project directory on installing the package.

- elm-package.json (file) , stores project meta data
- elm-stuff (folder) , stores external packages  

 This is shown in the screenshot below-
 <!-- screenshot with the above files in the project directory-->  
 
## Step 3: Add the following code to the Hello.elm file

```elm

-- importing Html module and the function text
import Html exposing (text)

-- create main method
main =
-- invoke text function 
 text "Hello Elm from TutorialsPoint"

```

The above program will display a string message `Hello Elm from TutorialsPoint` in the browser.For this we need to import inbuilt module named `Html` and a function `text` with in that module. The `text` function is used to print any string value in the browser.

The `main` method is the entry point to a program. The `main` ith in main the method invokes the `text` function and passes a string value to it.  

## Step 3: Compile the project
Execute the following command in VSCode terminal window.
<!--update path to the proj folder in the command>--> `elm make Hello.elm`

The output of the above command is as shown below- 

```javascript
<!--update path to the proj folder in the command> E:\ElmWorks\>elm make Hello.elm
Success! Compiled 38 modules.
Successfully generated index.html

```
The above command will generate an **index.html** file. The elm compiler converts `.elm` file to Javascript and embeds it in the **index.html** file.

## Step 4: Open the index.html in the browser

Open the `index.html` file in any browser . The output will be as shown below

![html](https://github.com/kannans89/ElmRepo/blob/master/images/06_hello_world.PNG?raw=true)

## Comments in Elm

Comments are a way to improve the readability of a program. Comments can be used to include additional information about a program like author of the code, hints about a function construct etc. Comments are ignored by the compiler.

Elm supports the following types of comments −

- Single-line comments ( `--` ) : Any text between a `--` and the end of a line is treated as a comment

- Multi-line comments (`{- -}`) − These comments may span multiple lines.

Example

```elm
-- this is single line comment

{- This is a  
   Multi-line comment
-}

```
