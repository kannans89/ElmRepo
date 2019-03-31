# Functions

Functions are the building blocks of an Elm program. A function is a set of statements to perform a specific task.  
Functions organize the program into logical blocks of code. Once defined, functions may be called to access code. This makes the code reusable. Moreover, functions make it easy to read and maintain the program’s code.  

There are three  steps to using a function : 
1. **Function Declaration**: A function declaration tells the compiler about a function's name, return type, and parameters. The syntax for declaring a function is given below: 
```elm
   fn_name:data_type_of_the_parameters ->return_type
```
The function declaration specifies the following: 
- Name of the function 
- Data type of the parameters.This is optional as a function may or may not have parameters.
- Data type of the value, which the function will return. Functions in Elm must always return a value as Elm is a functional programming language. Unlike functions in other programing languages, Elm functions do not use the *return* keyword to return a value.

2. **Function Definition or Function Implementation**: A function definition provides the actual body of the function.A function definition specifies how a specific task would be done. The syntax for defining a function is as given below:

```elm
   fn_name parameter1 parameter2 =
     statements
```

3. **Invoking or Calling a Function**:  A function must be called so as to execute it. The syntax for calling a function is given below:

```elm
   fn_name parameter1 parameter2
```

### Illustration

The following code defines a function *greet*. The function returns a string "Hello ".
```elm

> greet = \
|  if True then \
|    "Hello" \
|   else \
|     "GoodBye"
"Hello" : String
> greet
"Hello" : String
  
```

## Parameterized Functions

Parameters are a mechanism to pass values to a function. The values of the parameters are passed to the function at the time of function invocation.  

### Illustration

The following example defines a function *fn_add*. The function accepts two numbers as parameters and returns their sum. Try the following in elm REPL

```elm

> fn_add x y = x+y
<function> : number -> number -> number
> fn_add 10 20
30 : number

```

### Illustration
The following example defines a function sayHello. The sayHello function accepts and returns a String value as parameter and returns a String. 

```javascript
> sayHello name = "Hello "++ name
<function> : String -> String
> sayHello "Tutorialspoint"
"Hello Tutorialspoint" : String
>

```

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

```

In the first example we are chaining the list to join method.In the second case same list is piped to reverse function and after the piped to join. So list is displayed in reversed and joined.
