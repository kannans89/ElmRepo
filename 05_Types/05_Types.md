# Data Types

The Type System represents the different types of values supported by the language. The Type System checks validity of the supplied values, before they are stored or manipulated by the program. This ensures that the code behaves as expected. The Type System further allows for richer code hinting and automated documentation too.

Elm is a statically typed language.Elm has types that are similar to those from other languages

## Number

The `number` data type represents numeric values. The Elm type system supports the following numeric types-

|Sr No |  type    | Example|
|:----:|:----------|:-------|
| 1    | number : Stores any number| 7 is number type     |
| 2    | Float  : Stores fractional values   | 7`/`2 gives 3.5 result as Float      |
| 3    | Int    : Stores non-fractional values  | 7`//`2 gives 3 result as Int     |

The type `number` accomodates both fractional and non-fractional values.  

Open the elm repl and try the examples given below-



```javascript
C:\Users\admin>elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> 7
7 : number
> 7/2
3.5 : Float
> 7//2
3 : Int
>
```

## String and Char

The `String` data type is used to represent a sequence  of characters.  The `Char` data type is used to represent a single character. `String` values are defined within a double quote `"` and `Char` values are enclosed within a single quote `'`.


|Sr No |  type    | Example|
|:----:|:----------|:-------|
| 1    | String  : Stores a sequence of characters | "TutorialsPoint"      |
| 2   | Char     : Stores a single character value  | 'T'      |

Open the elm repl and try the examples given below-

```javascript
C:\Users\admin>elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> "TutorialsPoint"
"TutorialsPoint" : String
> 'T'
'T' : Char

```

## Boolean Type

The Boolean data type in Elm supports only two values – True and False. The keyword `Bool` is used to represent a boolean type.

|Sr No |  type    | Example|
|:----:|:----------|:-------|
| 1    | Bool : Stores values True or False | 1==1 returns True   |  

Open the elm repl and try the examples given below-

```javascript
C:\Users\dell\elm>elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> True
True : Bool
> False
False : Bool
> 1==1
True : Bool
> 1==2
False : Bool
> 1 /= 2   -- not equal
True : Bool
> not True
False : Bool
> not False
True : Bool
```  

## Structured Data types
Structured data types can be used to store multiple values in a structured format.Elm supports the following structured data types:  

- Tuple
- List
- Record  

These will be discussed in detail in the upcoming chapters.


<!--add in chap operators 
## Comparable Types

Comparison operators like `>=` or `<` work with comparable types. These are defined as numbers, characters, strings, and lists, tuples.On both sides of the comparison, the comparable types must be the same.

|Sr No |  Comparable type    | Example|
|:----:|:----------|:-------|
| 1    | number    | 7>2 gives True result
| 2    | character    | 'a' =='b' gives False
| 3    | string    | "hello" =="hello" gives True
| 4   | tuple    | (1,"One")==(1,"One") gives True
| 5   | list    | [1,2]==[1,2] gives True

Open the elm repl and try examples shown below

```javascript
C:\Users\admin>elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> 7>2
True : Bool
> 7.0>2
True : Bool
> 7.0<2.0
False : Bool
> 'a' > 'b'
False : Bool
> 'a' < 'b'
True : Bool
> "a" < "b"
True : Bool
> (1,2) > (2,3)
False : Bool
> ['1','3'] < ['2','1']
True : Bool
>

```
-- >
