# Tuples

At times, there might be a need to store a collection of values of varied types. Elm gives us a data structure called tuple that serves this purpose.

A tuple represents a heterogeneous collection of values. In other words, tuples enable storing multiple fields of different types.A tuple stores fixed number of values.Tuples are useful when you want to return multiple values of different types from a function.Tuples are immutable like other types in elm.

## Syntax

```eml
 (data1,data2)
```

simple example is shown below

```elm
> ("TuotrialsPoint",5,True,"Hyderabad")
("TuotrialsPoint",5,True,"Hyderabad") : ( String, number, Bool, String )
```

## Tuple Operations

Following are some common functions used with tuples in Elm:

### first

Extract the first value from a tuple.

**Syntax**
```elm
Tuple.first tuple_name
```

```elm
> Tuple.first
<function> : ( a1, a2 ) -> a1
```
**Illustration**
```javascript
 > Tuple.first (10,"hello")
10 : number
```

### second 
Extract the second value from a tuple.

**Syntax**
```elm
Tuple.second tuple_name
```

```elm
> Tuple.second
<function> : ( a1, a2 ) -> a2
```
**Illustration**

```javascript
 > Tuple.second (10,"hello")
"hello" : String
```

## List of tuples

A List can store Tuples.If tuples are used inside a list , make sure they all are of the same data type and have same number of parameters.

**Illustration**
```javascript
> [("hello",20),("world",30)]
[("hello",20),("world",30)] : List ( String, number )

```

## Tuple with function

A function can return tuples. Also, tuples can be passed as parameters to functions.  

### Illustration 1

The following example defines a function `fn_checkEven`. This function accepts an integer value as parameter and returns a tuple.

```elm
> fn_checkEven no = \
    if no%2 == 0 then \
      (True,"The no is Even")\
    else \
      (False,"No is not even")
<function> : Int -> ( Bool, String )
> fn_checkEven 10
(True,"The no is Even") : ( Bool, String )
> fn_checkEven 11
(False,"No is not even") : ( Bool, String )
>

```

### Illustration 2

In the example given we are passing a tuple as a parameter to a function. 

```elm
> fn_add (a,b) = \
|   a+b
<function> : ( number, number ) -> number
> fn_add (10,20)
30 : number
```

The function `fn_add` takes a tuple of size two and each of number type and returns sum of it

## Destructuring

For tuples with three or more values we need to use destructuring.Here we assign each value in a tuple to different variables.Using _ one can define placeholders for values that will be ignored or skipped.


### Example1
```elm
 > (first,_,_) = (10,20,30)
10 : number
> first
10 : number
```

### Example2

In this example we wil use `let..in` to destructure.


```elm
> t1 = (10,20,30)
(10,20,30) : ( number, number1, number2 )
> let \
   (a,b,c) = t1 \
  in\
   a + b +c
60 : number
```

we are declaring variables `a b c`in `let` clause and accessing them using `in` clause