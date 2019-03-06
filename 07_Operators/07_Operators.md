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

Open the elm repl and execute the following operations

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