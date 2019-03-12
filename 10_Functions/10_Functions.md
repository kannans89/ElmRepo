# Functions

Functions are the building blocks of readable, maintainable, and reusable code. A function is a set of statements to perform a specific task. Functions organize the program into logical blocks of code. Once defined, functions may be called to access code. This makes the code reusable. Moreover, functions make it easy to read and maintain the program’s code.

A function declaration tells the compiler about a function's name, return type, and parameters. A function definition provides the actual body of the function.

|S.No| Name | Description
|:----|:-----|:----------
| 1   | Defining a function | A function definition specifies what and how a specific task would be done
| 2   | Calling or invoking a Function | A function must be called so as to execute it
| 3   | Returning Functions | Functions may also return value along with control, back to the caller
| 4   | Parameterized Function | Parameters are a mechanism to pass values to functions.

## Syntax

```rust
   fn_name parameter1 parameter2 =
     statements
```

<!-- https://dennisreimann.de/articles/elm-functions.html -->

### Examples

Let us see an example where we define a function to add two numbers as shown

```javascript
> fn_add x y = x+y
<function> : number -> number -> number
> fn_add 10 20
30 : number

```

Let us see another example where we passing `String` type as shown below.

```javascript
> sayHello name = "Hello "++ name
<function> : String -> String
> sayHello "Tutorialspoint"
"Hello Tutorialspoint" : String
>

```