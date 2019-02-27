# Basic Syntax

In this chapter let us discuss how to make a helloworld program.

## Step 1: Create a Hello.elm file

We need to create a Hello.elm file.

```elm

-- importing Html module and the function text
import Html exposing (text)

-- create main method
main =
-- invoke text function
 text "Hello Elm from TutorialsPoint"

```

The above program will display a string message `Hello Elm from TutorialsPoint` in the browser.For this we need to import inbuilt module named `Html` and a function `text` with in that module.To compile the file and execute we need a entry point function called `main`.With in main the method `text` is called passing in string value.

## Step 2: Install html package

For using `Html` module first html package has to be installed as below.

`elm package install elm-lang/html`

the following screen will appear for the above command

![html](https://github.com/kannans89/ElmRepo/blob/master/images/05_html_package.PNG?raw=true)

The above command created the following file and folder

- elm-package.json (file) , stores project meta data
- elm-stuff (folder) , stores external packages

## Step 3: Compile the project

To compile the project we need to use command `elm make Hello.elm`

```javascript
E:\ElmWorks\>elm make Hello.elm
Success! Compiled 38 modules.
Successfully generated index.html

```

The above command will generate an **index.html** file

## Step 4: Open the index.html in browser

Open the `index.html` file in any browser . The output will be as shown below

![html](https://github.com/kannans89/ElmRepo/blob/master/images/06_hello_world.PNG?raw=true)

## Comments in Elm

Comments are a way to improve the readability of a program. Comments can be used to include additional information about a program like author of the code, hints about a function construct etc. Comments are ignored by the compiler.

Elm supports the following types of comments −

Single-line comments ( `--` ) : Any text between a `--` and the end of a line is treated as a comment

Multi-line comments (`{- -}`) − These comments may span multiple lines.

Example

```elm
-- this is single line comment

{- This is a  
   Multi-line comment
-}

```