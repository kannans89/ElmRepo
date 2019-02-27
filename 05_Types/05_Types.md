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

## Strings and Chars

Strings are defined with a double quote `"` and characters with a single quote `'`.They cannot be concatenated without conversion functions,

|Sr No |  type    | Example|
|:----:|:----------|:-------|
| 1    | String  | "TutorialsPoint"      |
| 2   | Char  | 'T'      |

## Comparable Types

Comparison operators like >= or < work with comparable types. These are defined as numbers, characters, strings, and lists, tuples.On both sides of the comparison, the comparable types must be the same.

|Sr No |  type    | Example|
|:----:|:----------|:-------|
| 1    | Bool    | 7>2 gives True result as Bool     |
