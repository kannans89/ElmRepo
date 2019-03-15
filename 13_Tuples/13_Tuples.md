# Tuples

List and Tuples both are collections of data.A tuple can have fixed number of values and items in tuple can have different types unlike a list.Tuples are useful when you want to return multiple values from a function.Tuples are immutable like other types in elm.

## Tuple.first function

```javascript
 Tuple.first
<function> : ( a1, a2 ) -> a1

```

## List of tuples

If tuples are used inside a list , make sure they all have same types inside and number of parameters.

```javascript
> [("hello",20),("world",30)]
[("hello",20),("world",30)] : List ( String, number )

```

## Tuple with function

In this example given a function is defined `fn_checkEven` this accepts an `Int` value as input parameter and returns a tuple `(Bool,String)`

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