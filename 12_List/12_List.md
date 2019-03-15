# List

List contains a collection of items all have the same type.

```javascript

> myList1 = [10,20,30]
[10,20,30] : List number
> myList2 = ["hello","world"]
["hello","world"] : List String
```

If we try different types into a list you will end up with following type mismatch error

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

## List isEmpty function

```javascript
> List.isEmpty
<function> : List a -> Bool

> List.isEmpty [10,20,30]
False : Bool
```

## How to reverse a list

```javascript
> List.reverse [10,20,30]
[30,20,10] : List number
```

## How to concatenate two lists

In the example we are combining two lists of floats using the `++` operator.

```javascript
> [10.1,20.2] ++ [30.3,40.4]
[10.1,20.2,30.3,40.4] : List Float
```

## range method of list

```javascript
> List.range 1 10
[1,2,3,4,5,6,7,8,9,10] : List Int

```

## using the cons operator

```javascript
> 10::[20,30,40,50]
[10,20,30,40,50] : List number

```

cons operator with type mismatch

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

Let us check if lists are immutable in Elm.The first list `myList` when concatenated with value 1 ,it creates a new list and is returned to `myListCopy`.So if we display initial list ,its values will not be changed as in the exmaple.

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