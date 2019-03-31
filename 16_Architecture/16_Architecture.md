# Architecture

<!-- https://learning.oreilly.com/library/view/web-applications-with/9781484226100/html/434702_1_En_5_Chapter.xhtml -->

In this chapter we will discuss the standard way to create applications in Elm platform.Elm uses an architectural pattern similar to Model-View-Controller pattern .

Following are the four main parts of Elm Architecture.

1. Model
2. View
3. Message
4. Update

<!-- Add a new image make circle shaped and arrows in different style -->
!["Architecture"](https://github.com/kannans89/ElmRepo/blob/master/images/11_architecture1.JPG?raw=true)

## Model

Model deals with the application's state.

```elm
-- Model syntax

type alias Model = { ... }

```

## View

View is a visual representation of the application state. The View knows how to take data and generate web page out of it.When a user interacts with the view , the user can manipulate the state by generating messages.

 ```elm

 --View Syntax
view : Model -> Html Message
view model =

 ```

## Message

Message is a request from the user to alter the application state . 

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
