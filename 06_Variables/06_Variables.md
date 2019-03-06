# Variables

A variable is a named storage that programs can manipulate.Simply put, a variable helps programs to store values. Variables in Elm are associated with a specific data type. The data type determines the size and layout of the variable's memory, the range of values that can be stored within that memory and the set of operations that can be performed on the variable.

## Variable Naming-Rules

The name of a variable can be composed of letters, digits, and the underscore character.It must begin with either a letter or an underscore.Upper and lowercase letters are distinct because Elm is case-sensitive .

## Syntax

The data type is not required while declaring a variable in Elm. The data type is inferred from the value assigned to the variable.

The syntax for declaring a variable is given below.

```elm
   variable_name=value;-- no type specified
```

### Example

Use Elm repl to try this example. Here we used *company* and *location* as String variables and *rating* as Float variable

```javascript

> company = "TutorialsPoint"
"TutorialsPoint" : String
> location = "Hyderabad"
"Hyderabad" : String
> rating = 4.5
4.5 : Float

```
