# String

<!-- https://package.elm-lang.org/packages/elm/core/latest/String -->
A sequence of unicode characters is called a String. In Elm strings are enclosed in `"" double quotes`. A `String` is a chunk of text as shown below.

```javascript

> "TutorialsPoint"
"TutorialsPoint" : String

```

## String Functions
Some common functions that can be used to query or manipulate string values are given below. Use REPL to try the examples given below. 

### isEmpty 

This function can be used to determine if a string is empty. This function returns True if the supplied String is empty. 

**Syntax**
```javascript
 String.isEmpty String_value
```

**Illustration**

```javascript
 String.isEmpty
<function> : String -> Bool
> String.isEmpty ""
True : Bool
> String.isEmpty "Tutorialspoint"
False : Bool

```
<<put an example with variables>>


### reverse 
This function reverses a string.  

**Syntax**
```javascript
 String.reverse String_value
``` 

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
**Illustration**
```javascript
> String.append "Tutorials" "Point"
TutorialsPoint : String
```  

### concat  
This function returns a new string by concatenating many strings into one.

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

**Syntax**
```javascript
 String.split string_seperator String_value
```  
**Illustration**
```javascript
> String.split "," "Hello,Tutorials,Point"
<<<output>>
```  

### slice  
This function returns a substring given a start and end index. Negative indexes are taken starting from the end of the list. The value of the index starts from zero.

**Syntax**
```javascript
 String.slice start_index end_index String_value
```  
**Illustration**
```javascript
> String.slice 0 13 "TutorialsPoint"
<<<output>>
``` 

### contains   
This function returns a True if the second string contains the first one.

**Syntax**
```javascript
 String.contains string1 string2
```  
**Illustration**
```javascript
> String.contains "Point" "TutorialsPoint"
<<<output>>
``` 

### toInt   
This function converts a string into an int.

**Syntax**
```javascript
 String.toInt string_value
```  
**Illustration**
```javascript


``` 

### fromInt   
This function converts an Int to a String.

**Syntax**
```javascript
 String.fromInt Integer_value
```  
**Illustration**
```javascript


``` 

### toFloat   
This function converts a string into a float.

**Syntax**
```javascript
 String.toFloat string_value
```  
**Illustration**
```javascript


``` 

### fromFloat   
This function converts a Float to a String.

**Syntax**
```javascript
 String.fromFloat Float_Value
```  
**Illustration**
```javascript


``` 

### fromChar   
This function creates a string from a given character.

**Syntax**
```javascript
 String.fromChar character_value
```  
**Illustration**
```javascript


``` 

### toList   
This function converts a string to a list of characters.

**Syntax**
```javascript
 String.toList string_value
```  
**Illustration**
```javascript


``` 

### fromList   
This function converts a list of characters into a String

**Syntax**
```javascript
 String.fromList list_of_characters
```  
**Illustration**
```javascript


``` 

### toUpper   
This function converts a string to all upper case.

**Syntax**
```javascript
 String.toUpper String_value
```  
**Illustration**
```javascript


```

### toLower   
This function converts a string to all lower case.

**Syntax**
```javascript
 String.toLower String_value
```  
**Illustration**
```javascript


```

### trim   
This function gets rid of whitespace on both sides of a string.

**Syntax**
```javascript
 String.trim String_value
```  
**Illustration**
```javascript


```

[Filter and map functions]
