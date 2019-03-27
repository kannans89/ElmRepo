# Operators

An operator defines some function that will be performed on the data. The data on which operators work are called operands. Consider the following expression −

7 + 5 = 12

Here, the values 7, 5, and 12 are operands, while + and = are operators.

The major operators in Elm can be classified as:

- Arithmetic
- Relational

## Arithmetic Operators

Assume the values in variables a and b are 7 and 2 respectively.

|Sr No |  Operator | Description  | Example
|:----:|:----------|:----|:-----------------|
| 1    | +(Addition)     | returns the sum of the operands|a+b is 9
| 2    | -(Subtraction)     | returns the difference of the values|a-b is 5
| 3    | * (Multiplication)     | returns the product of the values|a*b is 14
|4|/ (Float Division)|performs division operation and returns a float quotient|a / b is 3.5
|5|// (Integer Division)|performs division operation and returns a integer quotient|a // b is 3
|6|% (Modulus)|performs division operation and returns the remainder| a % b is 1

### Illustration
Try the following example in REPL -  

```javascript
 > a = 7
7 : number
> b = 2
2 : number
> a+b
9 : number
> a-b
5 : number
> a*b
14 : number
> a/b
3.5 : Float
> a//b
3 : Int
> a % b
1 : Int

```

## Relational Operators

Relational Operators test or define the kind of relationship between two entities.Relational operators are used to compare two or more values.Relational operators return a Boolean value, i.e. true or false.

Assume the value of `a` is 10 and `b` is 20.

|Sr No |  Operator | Description  | Example
|:----:|:----------|:----|:-----------------|
|1| >|Greater than |(a > b) is False|
|2| < | Lesser than |(a < b) is True|
|3| >=|Greater than or equal to|(a >= b) is False
|4|<= |Lesser than or equal to|(a <= b) is True
|5|== |Equality|(a == b) is false
|6| /= |Not equal|(a != b) is True

### Illustration

Open the elm repl and execute the following operations-

```javascript
> a = 10
10 : number
> b = 20
20 : number
> a>b
False : Bool
> a<b
True : Bool
> a>=b
False : Bool
> a<=b
True : Bool
> a==b
False : Bool
> a/=b
True : Bool

```
### Comparable Types

Comparison operators like `>=` or `<` work with comparable types. These are defined as numbers, characters, strings, and lists, tuples. The comparable types on both sides of the operator must be the same.

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

## Logical Operators  

Logical Operators are used to combine two or more conditions. Logical operators too return a Boolean value. Assume the value of variable 

|Sr No |  Operator | Description  | Example
|:----:|:----------|:----|:-----------------|
|1| && | |The operator returns true only if all the expressions specified return true| (10>5) && (20>5) returns True
|2| || | The operator returns true if at least one of the expressions specified return true |(10 < 5) || (20 >5) returns True
|3| not |The operator returns the inverse of the expression’s result. For E.g.: !(>5) returns false| not (10 < 5) returns True
|4| xor |The operator returns true only if exactly one input returns true. The operator returns false if both the expressions return true| xor (10 > 5 ) (20 > 5) returns false  

### Illustration 

Open the elm repl and try examples shown below

```javascript

C:\Users\admin>elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> 10 > 5 || 20>5
True : Bool
> 10 >5 && 20>5
True : Bool
> 10 /= 20
True : Bool
> not True
False : Bool
> not (10>20)
True : Bool
> xor True True
False : Bool
> xor (10>20) (20>10)
True : Bool

``` 





<!-- move this to chapter function 
## Pipe Operator
To understand pipe operator `|>`, let us see an example where we have a list of different strings `["a","b","c"]` . Now we need a single string which is separated by `-`.Following example shows how to do that with `String.join`
```elm
> String.join "-" ["a","b","c","d","e","f"]
"a-b-c-d-e-f" : String
```
Using a pipe operator `|>` we can chain multiple function calls and it is much clean and readable.

```elm
> ["a","b","c","d","e","f"] |> String.join "-"
"a-b-c-d-e-f" : String
> ["a","b","c","d","e","f"] |> List.reverse |> String.join "-"
"f-e-d-c-b-a" : String

``` -->
In the first example we are chaining the list to join method.In the second case same list is piped to reverse function and after the piped to join. So list is displayed in reversed and joined. -->
