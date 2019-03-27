# Messages

In the Elm Architecture chapter we discussed on messages.Messages are user request to alter state of application.Syntax of message is given below.

```elm
--Message Syntax
type Message = Reset | ...
```

We will make a simple counter application which can increment (+) count and decrement(-) count by clicking on Add button and Subtract button.The messages for the application is

```elm
type Message =  Add | Subtract
```

### Define model

The model represent the state of the applicaiton . In the counter application the model definition is given below ,initial state of counter will be zero.

```elm
model = 0
```

## Define View

 The view represent the visual elements of the application.In this example the view function takes model as parameter using toString function display the value of model.

 ```elm
view model =
-- invoke text function
 h1[]
  [   div[] [text "CounterApp from TutorialsPoint" ]
      ,button[onClick Subtract] [text "-"]
      ,div[][text (toString  model)]
      ,button[onClick Add] [text "+"]
  ]

 ```

The `+` button gernerates message `Add` on click and `-` generates messages `Subtract` onClick as shown.

## Define Update

```elm
   update msg model =
 case msg of
   Add -> model+1
   Subtract -> model-1
```

## Example

step 1: Create a folder MessagesApp and file `MessagesDemo.elm`

step 2: Add the following code in elm file

```elm
import Html exposing (..)
import Html.Events exposing(onClick)

model = 0

view model =
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

-- create main method
main =
   beginnerProgram
     {
         model=model
         ,view=view
         ,update=update
     }

```

step 3:  use elm make command in terminal

```elm
C:\Users\dell\elm\MessagesApp> elm make .\MessageDemo.elm
Some new packages are needed. Here is the upgrade plan.

  Install:
    elm-lang/core 5.1.1
    elm-lang/html 2.0.0
    elm-lang/virtual-dom 2.0.4

Do you approve of this plan? [Y/n] y
Starting downloads...

  ΓùÅ elm-lang/html 2.0.0
  ΓùÅ elm-lang/virtual-dom 2.0.4

ΓùÅ elm-lang/core 5.1.1
Packages configured successfully!
Success! Compiled 38 modules.
Successfully generated index.html

```

step 4: Open the index.html and verify the working as shown below

!["Messages"](https://github.com/kannans89/ElmRepo/blob/master/images/17_counter_messagesapp.PNG?raw=true)