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
Unlike other programming languages Elm does not return null. Elm 
<!-- Rephrase this 
https://learning.oreilly.com/library/view/web-applications-with/9781484226100/html/434702_1_En_4_Chapter.xhtml
-->
 In JavaScript and other languages, a null value may be returned by functions, often causing runtime errors. In Elm we have Maybe, which can represent values that exist or do not exist. The type Maybe is a union type itself, with the members Just a and Nothing. The latter is the equivalent of null in other languages. Just means that there is a valid value, and it is the argument to the Just constructor that returns a Maybe.

  ```elm
--  MayBeDemo.elm
module MayBeDemo exposing(..)
import Maybe 

userName : Maybe String 
userName = Just "Mohtashim"

userAge :Maybe Int
userAge = Just 20

userSalary:Maybe Float
userSalary = Nothing


type Country = India | China | SriLanka 

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

import the module in elm repl and execute as following

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

## Result

The Maybe type can help with simple functions that may fail, but it does not tell you why it failed. Imagine if a compiler just said Nothing if anything was wrong with your program. Good luck figuring out what went wrong!

```elm
 -- Syntax
 type Result error value
  = Ok value
  | Err error
```

## Exmaple in repl

String.toInt function returns Integer value if proper answer otherwise String values which contains error messe.

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

Let us create a funciton and understand the same concept

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

import the module in elm package and execute as follwign

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
