# Subscriptions

<!-- https://package.elm-lang.org/packages/elm/core/latest/Platform-Sub -->

In the previous chapter , we discussed that a View interacts with other components using Commands.Similarly, a component (E.g. WebSockets) can talk to a View using Subscriptions. Subscriptions are a way that an Elm application can receive external inputs like
keyboard events,timer events , websocket events etc.

<!--
Your application can make request to server via commands.
For example when we use websockets the application send data to server
via commands.Websocket can receive data back from the server since its
two way communication.We dont have to request for webscoket communication,the server can push data to socket.this is different from http request. Using suscriptions only elm applicaiton can listeren incoming requests form server back to client. Unlike http does client to server.websocket does server to client and client to server.-->
The following figure explains the role of Subscriptions in an Elm application. The user interacts with an Elm application via messages . The application given uses websockets and it has two modes of operations
 1. Send client side data to socket server via Command
 2. Receive data anytime from the socket server via Subscription
 
!["Architecture"](https://github.com/kannans89/ElmRepo/blob/master/images/subscription.JPG?raw=true)


## Syntax 

The syntax for deifining a subscription is given below-  


```elm
type Sub msg

```

## Illustration

Let us understand subscriptions using a simple  example.  
In the following example, the application sends a message to the server.The server is an echo server which responds back to the client with the same message. All the incoming messages are later displayed in a list. We will use websockets (`wss` protocol) to be able to continuously listen for messages from the server. The websocket will send user input to the server using Commands while it will use Subscription to receive messages from the server.


The various components of the application are given below- 

### Echoserver

The echo server can be accessed using the `wss` protocol.The echo server sends back user input to the application. 
The code for defining an echo server is given below: 

```elm
echoServer : String
echoServer =
  "wss://echo.websocket.org"

```

### Model

The Model represents user input and a list of incoming messages from the socket server. The code for defining the Model is as given below- 

```elm
type alias Model =
  { input : String
  , messages : List String
  }

```

### Messages

The message type will contain `Input` for taking textInput from user, `Send` message generated when user clicks the button to send message to websocket server and `NewMessage` is used when message arrives from echo server.

```elm
type Msg
  = Input String
  | Send
  | NewMessage String

```

### View

The application's view contains a textbox and a  submit button to send user input to the server. The response from the server is displayed on the View using a `div` tag.

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


### Update

Update funciton takes in message , model . It updates the model based on the message type .
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

|Sr No |  method    | Signature| Description
|:----:|:----------|:-------|:------------|
| 1| WebSocket.listen|listen : String -> (String -> msg) -> Sub msg|Subscribe to any incoming messages on a websocket.
|2|WebSocket.send |send : String -> String -> Cmd msg|Send a wss request to a server address .It is important that you are also subscribed to this address with listen . If you are not, the web socket will be created to send one message and then closed. 



##  Subscription

Subscription function takes in the model object. To receive the messages from webscoket server we call `WebSocket.listen` passing in
the message as `NewMessage`, so when new message comes from server the update method is called.

```elm
subscriptions : Model -> Sub Msg
subscriptions model =
WebSocket.listen echoServer NewMessage
```

## main

The main function is the entry point to the elm application as is shown below.

```elm
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



```

### Putting it all together

Step 1: Create a directory,SubscriptionApp and add a file,SubscriptionDemo.elm to it.

Step 2: Add following contents to SubscriptionDemo.elm file

```elm

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

Step 3: Install websockets package using elm package manager

```elm
 C:\Users\dell\elm\SubscriptionApp> elm-package install elm-lang/websocket
```


Step 4: Build and generate index.html file as shown

```elm
  C:\Users\dell\elm\SubscriptionApp> elm make .\SubscriptionDemo.elm
```

Step 5: The output is shown below

!["Subscription"](https://github.com/kannans89/ElmRepo/blob/master/images/21_subdemo.PNG?raw=true)
