# Tuples

At times, there might be a need to store a collection of values of varied types. Elm gives us a data structure called tuple that serves this purpose.

A tuple represents a heterogeneous collection of values. In other words, tuples enable storing multiple fields of different types.A tuple stores fixed number of values.Tuples are useful when you want to return multiple values of different types from a function.Tuples are immutable like other types in elm.

## Tuple Operations

Following are some common functions used with tuples in Elm:

### first

Extract the first value from a tuple.

**Syntax**
```elm
Tuple.first tuple_
```

**Illustration**
```javascript
 
```

### second 
Extract the second value from a tuple.

**Syntax**
```elm
Tuple.second tuple_
```

**Illustration**
```javascript
 
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

### Illustration
The following example defines a function `fn_checkEven`. This function accepts an integer value as parameter and returns a tuple.

```javascript
> fn_checkEven no = \
|   if no%2 == 0 then \
|     (True,"The no is Even")\
|   else \
|     (False,"No is not even")
<function> : Int -> ( Bool, String )
> fn_checkEven 10
(True,"The no is Even") : ( Bool, String )
> fn_checkEven 11
(False,"No is not even") : ( Bool, String )
>

```

### Illustration [passing tuple as a parameter]
The following example defines a function `fn_checkEven`. This function accepts an integer value as parameter and returns a tuple.

```javascript

``
