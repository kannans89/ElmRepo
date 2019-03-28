# Subscriptions

<!-- https://package.elm-lang.org/packages/elm/core/latest/Platform-Sub -->

Your application can interact with user via messages.
Your application can make request to server via commands.
For example when we use websockets the application send data to server
via commands.Websocket can receive data back from the server since its
two way communication.We dont have to request for webscoket communication,the server can push data to socket.this is different from http request. Using suscriptions only elm applicaiton can listeren incoming requests form server back to client. Unlike http does client to server.websocket does server to client and client to server.

!["Architecture"](https://github.com/kannans89/ElmRepo/blob/master/images/20_subscription.PNG?raw=true)

syntax 

```elm
type Sub msg

```

We will make a simple example to demonstrate subscription. To receive data from websocket we will use subscription and to send data to websocket server we will use command.

In our example will have a textbox and button , we send data typed in the texbox when button is clicked via `wss` protocol to an echo server. The server is an echo server so it responds back to client with same message. All the incoming messages are displayed in a list.

## Define Echoserver

```elm
echoServer : String
echoServer =
  "wss://echo.websocket.org"

```

## Define Model

Stores a list of all incoming messages and input texbox value.

```elm
type alias Model =
  { input : String
  , messages : List String
  }

```

## Define Messages

```elm
type Msg
  = Input String
  | Send
  | NewMessage String

```

## Define Update

Update funciton returns command
```elm

update : Msg -> Model -> (Model, Cmd Msg)
update msg {input, messages} =
  case msg of
    Input newInput ->
      (Model newInput messages, Cmd.none)

    Send ->
      (Model "" messages, WebSocket.send echoServer input)

    NewMessage str ->
      (Model input (str :: messages), Cmd.none)

```

## Define Subscription

```elm
subscriptions : Model -> Sub Msg
subscriptions model =
WebSocket.listen echoServer NewMessage
```

## Define View

```elm

view : Model -> Html Msg
view model =
  div []
    [ input [onInput Input, value model.input] []
    , button [onClick Send] [text "Send"]
    , div [] (List.map viewMessage (List.reverse model.messages))
    ]

viewMessage : String -> Html msg
viewMessage msg =
  div [] [ text msg ]

```

## Example

step 1: create a SubscriptionApp folder ,make a file SubscriptionDemo.elm

step 2: Add following contents to SubscriptionDemo.elm file

```elm
-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/effects/web_sockets.html

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import WebSocket


main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


echoServer : String
echoServer =
  "wss://echo.websocket.org"



-- MODEL


type alias Model =
  { input : String
  , messages : List String
  }


init : (Model, Cmd Msg)
init =
  (Model "" [], Cmd.none)



-- UPDATE


type Msg
  = Input String
  | Send
  | NewMessage String


update : Msg -> Model -> (Model, Cmd Msg)
update msg {input, messages} =
  case msg of
    Input newInput ->
      (Model newInput messages, Cmd.none)

    Send ->
      (Model "" messages, WebSocket.send echoServer input)

    NewMessage str ->
      (Model input (str :: messages), Cmd.none)



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
WebSocket.listen echoServer NewMessage



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ input [onInput Input, value model.input] []
    , button [onClick Send] [text "Send"]
    , div [] (List.map viewMessage (List.reverse model.messages))
    ]


viewMessage : String -> Html msg
viewMessage msg =
  div [] [ text msg ]


```

step 3: Install websockets using elm package manager

```elm
 C:\Users\dell\elm\SubscriptionApp> elm-package install elm-lang/websocket
```

step 4: Add following contents in the SubscriptionDemo.elm file

```elm
  -- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/effects/web_sockets.html

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import WebSocket



main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


echoServer : String
echoServer =
  "wss://echo.websocket.org"



-- MODEL


type alias Model =
  { input : String
  , messages : List String
  }


init : (Model, Cmd Msg)
init =
  (Model "" [], Cmd.none)



-- UPDATE


type Msg
  = Input String
  | Send
  | NewMessage String


update : Msg -> Model -> (Model, Cmd Msg)
update msg {input, messages} =
  case msg of
    Input newInput ->
      (Model newInput messages, Cmd.none)

    Send ->
      (Model "" messages, WebSocket.send echoServer input)

    NewMessage str ->
      (Model input (str :: messages), Cmd.none)



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  WebSocket.listen echoServer NewMessage



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ input [onInput Input, value model.input] []
    , button [onClick Send] [text "Send"]
    , div [] (List.map viewMessage (List.reverse model.messages))
    ]


viewMessage : String -> Html msg
viewMessage msg =
  div [] [ text msg ]


```

step 5: build and generate index.html file as shown

```elm
  C:\Users\dell\elm\SubscriptionApp> elm make .\SubscriptionDemo.elm
```

step 6: The output is shown below

!["Subscription"](https://github.com/kannans89/ElmRepo/blob/master/images/21_subdemo.PNG?raw=true)