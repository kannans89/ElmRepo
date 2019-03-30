# Loop

Elm is a functional programming language. Elm uses the concept of recursion as an alternative to traditional looping constructs.  
This chapter discusses the concept of recursion.

<!-- display a loop in javascript and show it using elm -->

## Loop to display Hello 5 times

Some computer programming languages allow a module or function to call itself. This technique is known as recursion.

### Illustration 
In this program we will se how to use recursion to display hello five times.

### Step 1: Create a file Loop.elm

Create a module Loop and define a function sayHello.The function sayHello takes an integer value as input and returns a string value.

```elm
module Loop exposing(..)
//function signature
sayHello:Int ->String
//function implementation
sayHello n =    
  case n of
   1 ->   "Hello:1 "
   _ -> "Hello:" ++ toString (n) ++ " " ++  sayHello(n-1)

```

The function sayHello checks if parameter passed is 1 , if 1 then function will return , otherwise it will create a string Hello and calls the same function.(need to put diagram here to explain concept)

### Step 2: Invoke sayHello from REPL

Open the elm-repl from current project folder (location of Loop.elm file).

```rust
//import the module Loop
> import Loop exposing(..)
//invoke the sayHello function with paramater value as 5
> sayHello 5
"Hello:5 Hello:4 Hello:3 Hello:2 Hello:1 Hello:0 " : String
>

```

!["Architecture"](https://github.com/kannans89/ElmRepo/blob/master/images/22_recursion_1.PNG?raw=true)


### Illustration
The following example prints the sum of n numbers using recursion.

```javascript
> sumOfNos n =\
|  if n==0 then 0 \
|  else (n) + sumOfNos (n-1)
<function> : number -> number1

```

```javascript

 > sums n = \
|   case n of \
|     0 -> 0 \
|     _ -> (n^2) +sums (n-1)
<function> : number -> number1
> sums 5
55 : number

```

<explain this illustratin>>>
