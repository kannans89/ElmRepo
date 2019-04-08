# ErrorHandling

<!-- https://hackernoKon.com/error-handling-in-elm-7ffaf9ff3f8 -->

An error is any unexpected condition in a program. Errors can occur either at compile-time or runtime.Compile time errors occur during the compilation of a program (E.g. error in the program's syntax) while runtime errors occur during the program's execution. 
Unlike other programming languages, Elm does not throw runtime errors.

Consider an application that accepts the age of a user. The application should throw an error if the age is zero or negative. In this case,the Elm application can use the concept of error handling to explicitly raise an error at runtime if the user enters zero or a negative value as age. Error handling specifies the course of action if anything unexpected happens during the program's execution.


The Elm programming language handles errors in the following ways-  
1. MayBe 
2. Result 

<!-- https://www.linkedin.com/learning/web-development-with-elm/maybe-and-the-result-data-types -->

 We're gonna learn how we can describe errors as data with Result, and the absence of data with Maybe.
 In this video, we're gonna look at Maybe, Result, and the concept of  programming with Maybe and Result. Maybe is data structure that helps us represent data that might be absent. And Result is data structure that helps us to represent the output of computation that might fail with an error.


 ## MayBe
Consider the search feature in an application. The search function returns related data if the search keyword is found else does not return anything.  This use case can be implemented in Elm using the MayBe type.   


### Syntax

```elm
 variable_name:MayBe data_type
```

A variable of type MayBe can contain either of the following values- 
a. Just some_Value : This is used if there valid data 
b. Nothing : This is used if the value is absent or unknown.Nothing is equivalent to null in other programmming languages.

### Illustration

The following example shows how to use MayBe type with variables and function.  

Step 1: Create a MayBeDemo.elm file and add the following code to it-

  ```elm
--  MayBeDemo.elm
module MayBeDemo exposing(..)
import Maybe 

--declaring  a MayBe variable and assigning value to it
userName : Maybe String 
userName = Just "Mohtashim"

--declaring  a MayBe variable and assigning value to it
userAge :Maybe Int
userAge = Just 20

--declaring  a MayBe variable and assigning value to it
userSalary:Maybe Float
userSalary = Nothing

--declaring  a custom type
type Country = India | China | SriLanka 

--defining a function that takes a String parameter as input and returns a value of type MayBe  

getCountryFromString : String -> Maybe Country
getCountryFromString p =
  case p of
    "India"
      -> Just India
    "China"
      -> Just China
    "SriLanka"
      -> Just SriLanka
    _
      ->  Nothing


  ```

Step 2: Import the module in elm repl and execute as given below-

```elm
 E:\ElmWorks\ErroApp> elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> import MayBeDemo exposing(..)
> userName
Just "Mohtashim" : Maybe.Maybe String
> userAge
Just 20 : Maybe.Maybe Int
> userSalary
Nothing : Maybe.Maybe Float
> getCountryFromString "India"
Just India : Maybe.Maybe MayBeDemo.Country
> getCountryFromString "india"
Nothing : Maybe.Maybe MayBeDemo.Country

```
The function checks if the value passed to the function is India or China or Srilanka. If the parameter's value does not match any of these, it returns nothing.  


## Result

Consider an example, where the application needs to validate some condition and raise an error if the condition is not satisfied. The Result type can be used to achieve this. The Result type should be used if the application wants to explicitly raise an error and return details about what went wrong.  


### Syntax

The Result type declaration takes two parameters- the data type of the error (ususally String ) and the data type of the result to be returned if everything goes fine.  

```elm
  type Result error_type data_value_type
  = Ok data_value
  | Err error_message
```
The Result type returns either of the following values-
- OK some_value - Represents result to be returned
- Err - Represents the error message to be returned if the expected conditions are not satisfied.


### Illustration

Try the following example in the Elm REPL-


```elm
> String.toInt
<function> : String -> Result.Result String Int
-- successful result
> String.toInt "10"
Ok 10 : Result.Result String Int
-- unsuccessful result , Error
> String.toInt "a"
Err "could not convert string 'a' to an Int" : Result.Result String Int

```
The String.toInt function returns Integer value if proper answer otherwise String values which contains error message.


### Illustration

The following example accepts age as a parameter. The function returns the age if it is between 0 and 135 else it returns an appropriate error message. 

Step 1: Create a ResultDemo.elm file and add the following code to it.

```elm
--ResultDemo.elm
module ResultDemo exposing(..)

isReasonableAge : String -> Result String Int
isReasonableAge input =
  case String.toInt input of
    Err r ->
      Err "That is not a age!"

    Ok age ->
      if age < 0 then
        Err "Please try again ,age can't be negative"

      else if age > 135 then
        Err "Please try agian,age can't be this big.."

      else
        Ok age
```

Step2 : Import the module in elm package and execute as given below- 

```elm
E:\ElmWorks\ElmRepo\15_ErrorHandling\15_Code> elm repl
---- elm-repl 0.18.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> import ResultDemo exposing (..)

> isReasonableAge "10"
Ok 10 : Result.Result String Int

> isReasonableAge "abc"
Err "That is not a age!" : Result.Result String Int
```
