# Loop

Since Elm is a functional programming language it uses recursion as an alternative to traditional for/while loops.In this chapter we will see how to loop using recursive approach.

<!-- display a loop in javascript and show it using elm -->

## Loop to display Hello 5 times

In this program we will se how to use recursive approach to display hello five times

### Step 1: Create a file Loop.elm

Create a module Loop and defined a method sayHello.The function sayHello takes an input as integer values and returns a string value.

```elm
module Loop exposing(..)

sayHello:Int ->String
sayHello n =
  case n of
   1 ->   "Hello:1 "
   _ -> "Hello:" ++ toString (n) ++ " " ++  sayHello(n-1)

```

Function sayHello checks if parameter passed is 1 , if 1 then function will return , otherwise it will create a string Hello and calls the same function.(need to put diagram here to explain concept)

### Step 2: Invoke sayHello from REPL

Open the elm-repl from current project folder where Loop.elm is created.First we have to import the module `Loop` .Next invoke the function `sayHello` parameter as 5.

```rust
> import Loop exposing(..)
> sayHello 5
"Hello:5 Hello:4 Hello:3 Hello:2 Hello:1 Hello:0 " : String
>

```

## Sum of n numbers using recursion

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

