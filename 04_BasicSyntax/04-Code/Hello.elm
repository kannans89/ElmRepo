-- creating a module with name Hello
--module Hello exposing(..)

-- importing Html module and function text
import Html exposing (..)
import Html.Events exposing(onClick)

model = 0

-- create main method
view model =
-- invoke text function
 h1[]
  [   div[] [text "CounterApp from TutorialsPoint" ]
      ,button[onClick Subtract] [text "-"]
      ,div[][text (toString  model)]   
      ,button[onClick Add] [text "+"]
  ]

type Message =  Add | Subtract

update msg model =
 case msg of 
   Add -> model+1
   Subtract -> model-1

 
main = 
   beginnerProgram 
     {
         model=model
         ,view=view 
         ,update=update
             
     }
 {- 
  a multi line comment
 -}