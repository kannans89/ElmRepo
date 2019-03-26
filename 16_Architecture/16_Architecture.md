# Architecture

<!-- https://learning.oreilly.com/library/view/web-applications-with/9781484226100/html/434702_1_En_5_Chapter.xhtml -->

In this chapter we will discuss the standard way to create applications in Elm platform.Elm uses an architectural pattern similar to Model-View-Controller pattern .

Following are four main parts of Elm Architecture.

1. Model
2. View
3. Message
4. Update

<!-- Add a new image make circle shaped and arrows in different style -->
!["Architecture"](https://github.com/kannans89/ElmRepo/blob/master/images/11_architecture1.PNG?raw=true)

## Model

Model function deals with applications state.

```elm
-- Model syntax

type alias Model = { ... }

```

## View

 View is a visual representation of the application state. View function knows how to take data and make web page out of it.When user interacts with the view , the user can manipulate the state by generating messages.

 ```elm

 --View Syntax
view : Model -> Html Message
view model =

 ```

## Message

Message is a request from user to alter state . A message should go some place in order to actually to perform state change,that someplace is the update function.

```elm
--Message Syntax
type Message = Reset | ...

```

## Update

The update function interprets  the messages to update model.

```elm

--Update Syntax
update : Message -> Model -> Model
update msg model =
  case msg of
    Reset -> ... -- if message is Reset do something


```