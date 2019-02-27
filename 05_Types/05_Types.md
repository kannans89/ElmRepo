# Data Types

The Type System represents the different types of values supported by the language. The Type System checks validity of the supplied values, before they are stored or manipulated by the program. This ensures that the code behaves as expected. The Type System further allows for richer code hinting and automated documentation too.

Elm is a statically typed language.Elm has types that are similar to those from other languages

## Primitives

 The type `number` can be either `Float or Int`. Conversions are performed automatically depending on the operator. For example, the division of two integers with `/` returns a float.For integer division we need to use `//` operator.

|Sr No |  type    | Example|
|:----:|:----------|:-------|
| 1    | number  | 7 is number type     |
| 2    | Float     | 7`/`2 gives 3.5 result as Float      |
| 3    | Int   | 7`//`2 gives 3 result as Int     |

Open the elm repl and try examples shown below

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

## Strings and Chars

Strings are defined with a double quote `"` and characters with a single quote `'`.They cannot be concatenated without conversion functions,

|Sr No |  type    | Example|
|:----:|:----------|:-------|
| 1    | String  | "TutorialsPoint"      |
| 2   | Char  | 'T'      |

Open the elm repl and try examples shown below

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

## Comparable Types

Comparison operators like >= or < work with comparable types. These are defined as numbers, characters, strings, and lists, tuples.On both sides of the comparison, the comparable types must be the same.Bool type can have value `True` or `False`

|Sr No |  type    | Example|
|:----:|:----------|:-------|
| 1    | Bool    | 7>2 gives True result as Bool  
| 2    | Bool    | 7<2 gives False result as Bool

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
