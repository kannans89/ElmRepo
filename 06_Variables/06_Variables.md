# Variables

A variable, by definition, is “a named space in the memory” that stores values. In other words, it acts as a container for values in a program.A variable helps programs to store and manipulate values.  

Variables in Elm are associated with a specific data type. The data type determines the size and layout of the variable's memory, the range of values that can be stored within that memory and the set of operations that can be performed on the variable.

## Variable Naming-Rules

- Variable names can be composed of letters, digits, and the underscore character.  
- Variable names cannot begin with a digit. It must begin with either a letter or an underscore.  
- Upper and lowercase letters are distinct because Elm is case-sensitive .  

## Variable Declaration In Elm  

The type syntax for declaring a variable in Elm is given below:   

### Syntax 1  

```elm  
    variable_name:data_type=value
```
The `:` syntax (knonw as type annotation) is used to associate the variable with a data type.  

### Syntax 2  

```elm  
     variable_name=value-- no type specified
```
The data type is optional while declaring a variable in Elm.In this case, the data type of the variable is inferred from the value assigned to it.  

### Example  
This example uses VSCode editor to write an elm program and execute it using the elm repl. 

### Step 1: Create a project folder - VariablesApp. Create a Variables.elm file in the project folder.

Add the following contents to the file .  

```elm
   module Variables exposing (..) //Define a module and expose all contents in the module
   message:String -- type annotation
   message = "Variables can have types in Elm"
```
The program defines a module `Variables`. The name of a module must be the same as that of the elm program file. The `(..)` syntax is  used to expose all components in the module.  

The program declares a variable `message` of the type `String`.  

![variablesApp](https://github.com/kannans89/ElmRepo/blob/master/images/10_Variables.PNG?raw=true)

### Step 2: Execute the program.  

- Type the following command in the VSCode terminal to open the elm repl.  

```elm
elm repl
```  
- Execute the following elm statement in the REPL terminal.  

```elm

> import Variables exposing (..) --imports all components from the Variables module
> message                        --Reads value in the message varaible and prints it to the REPL
"Variables can have types in Elm":String
> 

```

### Example

Use Elm repl to try the following example. 

```javascript
C:\Users\dell\elm>elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
-------------------------------------------------------------------------------
> company = "TutorialsPoint"
"TutorialsPoint" : String
> location = "Hyderabad"
"Hyderabad" : String
> rating = 4.5
4.5 : Float

```
Here, the variables *company* and *location* are  String variables and *rating* is a  Float variable.  

The elm repl does not support type annotation for variables. The following example throws an error if the data type is included while declaring a variable. 

```elm
C:\Users\dell\elm>elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> message:String
-- SYNTAX PROBLEM -------------------------------------------- repl-temp-000.elm

A single colon is for type annotations. Maybe you want :: instead? Or maybe you
are defining a type annotation, but there is whitespace before it?

3|   message:String
            ^
Maybe <http://elm-lang.org/docs/syntax> can help you figure it out.

```

To insert a line break while using the elm repl use the `\` syntax as shown below:  


```elm
C:\Users\dell\elm>elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> company \    -- firstLine
|   = "TutorialsPoint"  -- secondLine
"TutorialsPoint" : String
```
