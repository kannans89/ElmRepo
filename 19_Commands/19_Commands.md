# Commands

<!-- https://package.elm-lang.org/packages/elm/core/latest/Platform-Cmd -->
A command is a way of telling Elm, “Hey, I want you to do this thing!” So if you want to send an HTTP request, you would need to command Elm to do it.Or if you wanted to ask for geolocation, you would need to command Elm to go get it.

Syntax shows a command that takes a message

```elm
 type Cmd msg
```

<!-- 
https://app.pluralsight.com/player?course=elm-getting-started&author=mike-vansickle&name=elm-getting-started-m3&clip=5&mode=live
-->
In our app so far we have ability for user and application to 
communicate with one antoher using Messages.The application 
build shows visual representation using views and then user
interacts with view by generating  messages.The message tells 
application how we want to update.

Modern front end applications has to interact with not only users
it has to interact with other components with in the applications
itself for example making Http or Ajax requests or making
api calls etc.The way it should be done is through commands.
A command is triggered by a message.We will see an exmaple

!["Commands"](https://github.com/kannans89/ElmRepo/blob/master/images/18_commands.PNG?raw=true)

## Http Module

 Create and send HTTP requests. We will learn how commands are used with http module.The command to install http module is 

 ```elm
elm package install elm-lang/http
 ```

To understand commands we create a simple numbersFact application which have a textbox and button. User enters a positive number and presses the button.The application displays facts of that number.Application uses commands to make Http calls to backend service.

<!-- 
     CONCEPT OF DATA FLOW NumberApi
-->

## Define model

Model contains the input from textbox which is the input number,
the result which is facts related to that number and also a heading

```elm
type alias Model =
  { heading : String
  , factText : String
  , input :String
  }

```

## Define Message

Three messages are used as shown

```elm

type Msg
  = ShowFacts
  |Input String
  | NewFactArrived (Result Http.Error String)

```
## Defin update method

Note the update method returns a tuple which have model and command object.When user click on button the command passed is ShowFacts,
if showFacts then update method returns `(model, getRadmonNumberFromAPI model.input)`

```elm
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Input newInput ->
    (Model "NumbersApi typing.." "" newInput ,Cmd.none)
    ShowFacts ->
      (model, getRadmonNumberFromAPI model.input)

    NewFactArrived (Ok newFact) ->
      (Model "DataArrived" newFact "", Cmd.none)

    NewFactArrived (Err _) ->
      (model, Cmd.none)


```

the helper funciton to make http call to numberspi is shown below
The input parameter is String which is the number to search and the return type is command `Cmd Msg`

```elm
getRadmonNumberFromAPI : String->Cmd Msg
getRadmonNumberFromAPI newNo =
  let
    
    url =
      "http://numbersapi.com/"++newNo
  in
    Http.send NewFactArrived (Http.getString url)
```

|Sr No |  method    | Signature| Description
|:----:|:----------|:-------|:------------|
| 1| Http.getString|getString : String -> Request String|Create a GET request and interpret the response body as a String.
|2|Http.send |send:(Result Error a -> msg) -> Request a -> Cmd msg|Send a Http request

## Define view


```elm
view : Model -> Html Msg
view model =
  div []
    [ h2 [] [text model.heading]
    ,input [onInput Input, value model.input] []
    , button [ onClick ShowFacts ] [ text "show facts" ]
    , br [] []
    , h3 [][text model.factText]
    ]


```

## Define main

```elm

main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

```

## Example

step 1: create folder CommandApp and file CommandDemo.elm
step 2: 
Install http module using command `elm package install elm-lang/http`

step 3: Type the contents for CommandDemo.elm as shown

```elm

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http


main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- MODEL
type alias Model =
  { heading : String
  , factText : String
  , input :String
  }

init :  (Model, Cmd Msg)
init  =
  ( Model "NumbersAPI" "NoFacts" "42"-- set model two fields
  , Cmd.none  -- not to invoke api initially
  )


-- UPDATE

type Msg
  = ShowFacts
  |Input String
  | NewFactArrived (Result Http.Error String)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Input newInput ->
    (Model "NumbersApi typing.." "" newInput ,Cmd.none)
    ShowFacts ->
      (model, getRadmonNumberFromAPI model.input)

    NewFactArrived (Ok newFact) ->
      (Model "DataArrived" newFact "", Cmd.none)

    NewFactArrived (Err _) ->
      (model, Cmd.none)



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ h2 [] [text model.heading]
    ,input [onInput Input, value model.input] []
    , button [ onClick ShowFacts ] [ text "show facts" ]
    , br [] []
    , h3 [][text model.factText]
    ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- HTTP


getRadmonNumberFromAPI : String->Cmd Msg
getRadmonNumberFromAPI newNo =
  let
    url =
      "http://numbersapi.com/"++newNo
  in
    Http.send NewFactArrived (Http.getString url)

```

step 4: Fire the command `C:\Users\dell\elm\CommandApp> elm make .\CommandDemo.elm` this will generate the html file as shown below.

!["Commands"](https://github.com/kannans89/ElmRepo/blob/master/images/19_numberapi.PNG?raw=true)
