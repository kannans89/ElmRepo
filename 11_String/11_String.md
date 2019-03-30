# String

<!-- https://package.elm-lang.org/packages/elm/core/latest/String -->
A sequence of unicode characters is called a String. In Elm strings are enclosed in `"" double quotes`. A `String` is a chunk of text as shown below.

```javascript

> "TutorialsPoint"
"TutorialsPoint" : String

```

## String Functions
Some common functions that can be used to query or manipulate string values are given below. Use REPL to try the examples given below. 

### isEmpty function

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


### reverse function
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


### length function
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

### append function  
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

### concat function  
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

### split function  
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
