# String

<!-- https://package.elm-lang.org/packages/elm/core/latest/String -->
A sequence of unicode characters is called a String. In Elm strings are enclosed in `"" double quotes`. A `String` is a chunk of text as shown below.

```elm

> "TutorialsPoint"
"TutorialsPoint" : String
> location = "Hyderabad"  --variable
"Hyderabad" : String
> location
"Hyderabad" : String
>

```

## String Functions

Some common functions that can be used to query or manipulate string values are given below. Use REPL to try the examples given below. 

### isEmpty

This function can be used to determine if a string is empty. This function returns True if the supplied String is empty. 

**Syntax**

```elm
 String.isEmpty String_value

```

To check the signature of function type following in elm repl

```elm
 > String.isEmpty
<function> : String -> Bool
```

Signature of shows boolean as return type and input type as String

**Illustration**

```elm
> String.isEmpty ""
True : Bool
> String.isEmpty "Tutorialspoint"
False : Bool
> location = "Hyderabad"
"Hyderabad" : String
> String.isEmpty location
False : Bool
```

<!-- <<put an example with variables>> -->

### reverse

This function reverses a string.  

**Syntax**
```javascript
 String.reverse String_value
```

To check the signature of function type following in elm repl

```elm
 > String.reverse
<function> : String -> String
```

Signature of shows String as return type and input type as String


**Illustration**
```javascript
> String.reverse "TutorialsPoint"
"tnioPslairotuT" : String
```


### length 
This function returns the length of a string.  

**Syntax**
```javascript
 String.length String_value
```  

To check the signature of function type following in elm repl

```elm
> String.length
<function> : String -> Int
```

Signature of shows Int as return type and input type as String

**Illustration**

```javascript
> String.length "Mohtashim"
9 : Int
```

### append

This function returns a new string by appending two strings.  

**Syntax**
```javascript
 String.append String_value1 String_value2
```  

To check the signature of function type following in elm repl

```elm
> String.append
<function> : String -> String -> String
```

Signature of shows two String input parameters and one String output parameter


**Illustration**
```javascript
> String.append "Tutorials" "Point"
TutorialsPoint : String
```  

### concat  

This function returns a new string by concatenating many strings into one.

To check the signature of function type following in elm repl

```elm
> String.concat
<function> : List String -> String
```

Signature of shows a List of  String input parameter and  String return type

**Syntax**
```javascript
 String.concat [String1,String2,String3]
```  
**Illustration**
```javascript
> String.concat ["Hello","Tutorials","Point"]
HelloTutorialsPoint : String
```

### split  
This function splits a string using a given separator.

To check the signature of function type following in elm repl

```elm
> String.split
<function> : String -> String -> List String
```

Signature of shows two input String parameters and output as a lis of string type.

**Syntax**
```javascript
 String.split string_seperator String_value
```  
**Illustration**
```javascript
> String.split "," "Hello,Tutorials,Point"
["Hello","Tutorials","Point"] : List String
```  

### slice  

This function returns a substring given a start and end index. Negative indexes are taken starting from the end of the list. The value of the index starts from zero.

**Syntax**
```javascript
 String.slice start_index end_index String_value
```  


To check the signature of function type following in elm repl

```elm
> String.slice
<function> : Int -> Int -> String -> String
```

Signature of shows three input parameter and one return type

**Illustration**

```javascript
> String.slice 0 13 "TutorialsPoint"
"TutorialsPoin" : String
```

### contains   
This function returns a True if the second string contains the first one.

**Syntax**
```javascript
 String.contains string1 string2
```  

To check the signature of function type following in elm repl

```elm
> String.contains
<function> : String -> String -> Bool
```

Signature of shows bool return type and two input parameters

**Illustration**
```javascript
> String.contains "Point" "TutorialsPoint"
True : Bool
```

### toInt

This function converts a string into an int.

**Syntax**
```javascript
 String.toInt string_value
```  

To check the signature of function type following in elm repl

```elm
> String.toInt
<function> : String -> Result.Result String Int
```

Since toInt can return error , the return type is Result which is String or Int


**Illustration**
```elm
> String.toInt "20"
Ok 20 : Result.Result String Int
> String.toInt "abc"
Err "could not convert string 'abc' to an Int" : Result.Result String Int

``` 

### toFloat   
This function converts a string into a float.

**Syntax**
```javascript
 String.toFloat string_value
```  

To check the signature of function type following in elm repl

```elm
> String.toFloat
<function> : String -> Result.Result String Float
```

Since toFloat can return error , the return type is Result which is String or Float

**Illustration**

```javascript
> String.toFloat "20.50"
Ok 20.5 : Result.Result String Float
> String.toFloat "abc"
Err "could not convert string 'abc' to a Float" : Result.Result String Float

```

### fromChar

This function creates a string from a given character.

**Syntax**
```javascript
 String.fromChar character_value
```  

To check the signature of function type following in elm repl

```elm
> String.fromChar
<function> : Char -> String
```

the signatures shows String as return type and
input as Char type

**Illustration**

```javascript
> String.fromChar 'c'
"c" : String

```

### toList

This function converts a string to a list of characters.

**Syntax**

```javascript
 String.toList string_value
```  

To check the signature of function type following in elm repl

```elm
> String.toList
<function> : String -> List Char
```

the signatures shows function returns a list of characters and takes input a string.

**Illustration**
```javascript
> String.toList "tutorialspoint"
['t','u','t','o','r','i','a','l','s','p','o','i','n','t'] : List Char
``` 

### fromList   
This function converts a list of characters into a String

**Syntax**
```javascript
 String.fromList list_of_characters
```  

signature of function is given

```elm
> String.fromList
<function> : List Char -> String
```

**Illustration**
```javascript

> String.fromList ['h','e','l','l','o']
"hello" : String
``` 

### toUpper   
This function converts a string to all upper case.

**Syntax**
```javascript
 String.toUpper String_value
```  

signature of function is given below

```elm
> String.toUpper
<function> : String -> String
```

**Illustration**
```javascript
> String.toUpper "hello"
"HELLO" : String

```

### toLower   
This function converts a string to all lower case.

**Syntax**
```javascript
 String.toLower String_value
```  
signature is shown below

```elm
> String.toLower
<function> : String -> String
```


**Illustration**

```elm
> String.toLower "AbCd"
"abcd" : String

```

### trim   
This function gets rid of whitespace on both sides of a string.

**Syntax**
```javascript
 String.trim String_value
```

following shows function signature
```elm
> String.trim
<function> : String -> String
```

**Illustration**
```javascript
> String.trim "tutorialspoint   "
"tutorialspoint" : String

```

### filter

This function filters a set of characters from input String.Keep only the characters that pass the test.

**Syntax**

```elm
 String.filter test_function string_value
```

The signatrue is shown below
```elm
> String.filter
<function> : (Char -> Bool) -> String -> String

```

The signature shows filter takes two input parameters and returns a String.The first parameter is a function which has input Char and returns Bool,this is also a test funciton for example  `Char.isUpper`

```elm
> Char.isUpper
<function> : Char -> Bool
```

In example we are passing `Char.isUpper` as parameter to filter method , it returns all upper case characters as shown below.

**Illustration**

```elm
> import Char
> String.filter Char.isUpper "abcDEF"
"DEF" : String
```

[Filter and map functions]
### map

This function takes a String and transform every character in a string.

**Syntax**

```elm
 String.filter mapping_function string_value
```

The signatrue is shown below
```elm
> String.map
<function> : (Char -> Char) -> String -> String
```

The signature shows map takes two input parameters and returns a String.The first parameter is a function which has input Char and returns Char,this is also a mapping funciton for example . Shown is a mapping funciton which maps `o` to `@`

```elm
> (\c -> if c == 'o' then '@' else c)
<function> : Char -> Char
```

**Illustration**

```elm
> String.map (\c -> if c == 'o' then '@' else c)  "TutorialsPoint"
"Tut@rialsP@int" : String
```
