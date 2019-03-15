# Loop

Since Elm is a functional programming language it uses recursion as an alternative to loops.In this chapter we will see how to loop using recursive approach.

<!-- display a loop in javascript and show it using elm -->

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

