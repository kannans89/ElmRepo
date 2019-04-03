# List

The use of variables to store values poses the following limitations:
- Variables are scalar in nature. In other words, a variable declaration can only contain a single at a time. This means that to store n values in a program n variable declarations will be needed. Hence, the use of variables is not feasible when one needs to store a larger collection of values.
- Variables in a program are allocated memory in random order, thereby making it difficult to retrieve/read the values in the order of their declaration.  

The List, Tuples and Record data structures can be used to store a collection of values.This chapter discusses how to use List in Elm.

A List is a collection of homogeneous values. The values in a list must all be of the same data type.  

### Syntax
```javascript
List_name = [value1,value2,value3.....valuen]
```

### Illustration 
The following example shows how to use a List in Elm. Try this example in 

```javascript

> myList1 = [10,20,30]
[10,20,30] : List number
> myList2 = ["hello","world"]
["hello","world"] : List String
```

If we try adding values of different types into a list the compiler will throw a type mismatch error. This is shown below.

```javascript
> myList = [1,"hello"]
-- TYPE MISMATCH --------------------------------------------- repl-temp-000.elm

The 1st and 2nd entries in this list are different types of values.

4|          [1,"hello"]
               ^^^^^^^
The 1st entry has this type:

    number

But the 2nd is:

    String
```

## List operations
Some common operations on a List are given below : 

### isEmpty
This function returns true if a list is empty

**Syntax**

```elm
List.isEmpty list_name
```

function signature is shown below

```elm
> List.isEmpty
<function> : List a -> Bool
```

**Illustration**

```javascript
> List.isEmpty
<function> : List a -> Bool

> List.isEmpty [10,20,30]
False : Bool
```

### reverse
This function reverses the list.

**Syntax**
```javascript
List.reverse list_name
```

function signature is shown below

```elm
> List.reverse
<function> : List a -> List a
```

**Illustration**

```javascript
> List.reverse [10,20,30]
[30,20,10] : List number
```

### length

This function returns the length of a list.

**Syntax**
```javascript
List.length list_name
```

```elm
>List.length
<function> : List a -> Int
```

**Illustration**

```javascript
> List.length [10,20,30]
3 : Int

```

### maximum

This function returns the maximum element in a non-empty list.

**Syntax**
```javascript
List.maximum list_name
```
type the following in elm repl
```elm
> List.maximum
<function> : List comparable -> Maybe.Maybe comparable
```
**Illustration**

```javascript

> List.maximum [10,20,30]
Just 30 : Maybe.Maybe number
> List.maximum []
Nothing : Maybe.Maybe comparable
```

### minimum

This function returns the minimum element in a non-empty list.

**Syntax**
```javascript
List.minimum list_name
```

```elm
> List.minimum
<function> : List comparable -> Maybe.Maybe comparable
```

**Illustration**

```javascript
> List.minimum [10,20,30]
Just 10 : Maybe.Maybe number

```

### sum

This function returns the sum of all elements in a list.

**Syntax**
```javascript
List.sum list_name
```

```elm
> List.sum
<function> : List number -> number
```

**Illustration**

```javascript
> List.sum [10,20,30]
60 : number

```

### product

This function returns the product of all elements in a list.

**Syntax**
```javascript
List.product list_name
```

```elm
<function> : List number -> number
```

**Illustration**

```javascript
 List.product [10,20,30]
6000 : number

```

### sort

This function sorts values from lowest to highest in a list.

**Syntax**

```javascript
List.sort list_name
```

```elm
> List.sort
<function> : List comparable -> List comparable
```

**Illustration**

```javascript
> List.sort [10,20,30]
[10,20,30] : List number
```

### concat

This function concatenates a bunch of lists into a single list.

**Syntax**

```javascript
List.concat [ [list_name1],[list_name2],[list_name3],.....[list_nameN] ]
```

```elm
> List.concat
<function> : List (List a) -> List a
```

**Illustration**

```javascript
> List.concat [[10,20], [30,40],[50,60]]
[10,20,30,40,50,60] : List number

```  

### append
This function puts two lists together.

**Syntax**

```javascript
List.append  [list_name1] [list_name2]
```

```elm
 >List.append
<function> : List a -> List a -> List a
```

**Illustration**

```javascript
> List.append  [10,20] [30,40]
[10,20,30,40] : List number

```

The `++` operator can also be used to append a list to another. This is shown in the example below: 

```javascript
> [10.1,20.2] ++ [30.3,40.4]
[10.1,20.2,30.3,40.4] : List Float
```

### range
This function creates a list of numbers, every element increasing by one. The lowest and highest number that should be in the list is passed to the function.

**Syntax**

```javascript
List.range start_range end_range
```

```elm
> List.range
<function> : Int -> Int -> List Int
```

**Illustration**

```javascript
> List.range 1 10
[1,2,3,4,5,6,7,8,9,10] : List Int

```

## using the cons operator

The cons operator ( :: ) adds an element to the front of a list. 

**Illustration**

```javascript
> 10::[20,30,40,50]
[10,20,30,40,50] : List number

```

The new element to be added and the data-type of the values in the list must match. The compiler throws an error if the data types do not match. 

```javascript
> [1,2,3,4]::[5,6,7,8]
-- TYPE MISMATCH --------------------------------------------- repl-temp-000.elm

The right side of (::) is causing a type mismatch.

3|   [1,2,3,4]::[5,6,7,8]
                ^^^^^^^^^
(::) is expecting the right side to be a:

    List (List number)

But the right side is:

    List number

Hint: With operators like (::) I always check the left side first. If it seems
fine, I assume it is correct and check the right side. So the problem may be in
how the left and right arguments interact.

```

## Lists are immutable

Let us check if lists are immutable in Elm.The first list `myList` when concatenated with value 1 , creates a new list and is returned to `myListCopy`.So if we display initial list ,its values will not be changed.

```javascript
> myList = [10,20,30]
[10,20,30] : List number
> myListCopy = 1::myList
[1,10,20,30] : List number
> myList
[10,20,30] : List number
>myList == myListCopy
False : Bool

```

## How to access elements in a list??