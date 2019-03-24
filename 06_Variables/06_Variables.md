# Variables

A variable is a named storage that programs can manipulate.Simply put, a variable helps programs to store values. Variables in Elm are associated with a specific data type. The data type determines the size and layout of the variable's memory, the range of values that can be stored within that memory and the set of operations that can be performed on the variable.

## Variable Naming-Rules

The name of a variable can be composed of letters, digits, and the underscore character. It must begin with either a letter or an underscore.Upper and lowercase letters are distinct because Elm is case-sensitive .

## Syntax

The data type is not required while declaring a variable in Elm. The data type is inferred from the value assigned to the variable.
The syntax for declaring a variable is given below.

```elm
   variable_name=value-- no type specified
```

### Example

Use Elm repl to try this example. Here we used *company* and *location* as String variables and *rating* as Float variable

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

When using elm repl if we need to split a single line use `\` syntax as shown

```elm
C:\Users\dell\elm>elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> company \    -- firstLine
|   = "TutorialsPoint"  -- secondLine
"TutorialsPoint" : String
> employee_count \     --firstLine
|    = 50              -- secondLine
50 : number
> company
"TutorialsPoint" : String
> employee_count
50 : number

```

## Type annotation

In elm repl type annotation is not supported for variables. For example
when we declare a variable with type `message:String` gives error.

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

### Step 1: Create a Variables.elm file in VariablesApp Folder

Add following contents to the file .
`(..)` exposes every function in this module

```elm
   module Variables exposing (..)
   message:String -- type annotation
   message = "Variables can have types in Elm"
```

In the file we have added a variable message of type string

![variablesApp](https://github.com/kannans89/ElmRepo/blob/master/images/10_Variables.PNG?raw=true)

### Step 2: Import Variables module in  REPL

In the visual studio terminal import the `Variables` as shown

```elm
import Variables exposing (..)
message:String -- type annotation
message = "Variables can have types in Elm"
```