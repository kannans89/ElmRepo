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

## How it works

The **model** contains the application state for example if an application displays a list of customers then the state will contain each customer data. To display the state in a presentable way a **view** /html has to be generated.Once the user interacts with view by pressing a button or typing data in a form view generates signals called **messages**.
Messages are passed to the the **update** method, which evaluates the messages and takes proper action .So the update method will
generate a new model.

The new model generates again a new view and it will lead to new interactions from user to signal messages ,that goes to update function which again creates a new model .So the cycle repeats as shown in the above diagram.

## Model

Model deals with the application's state.

```elm
-- Model syntax

type alias Model = {
   property1:datatype,
   proptery2:datatype
   ...
 }

```

To create a model we need to first create a template with all property required in it.Each property
specify the state of the application.

## View

View is a visual representation of the application state. The View knows how to take data and generate web page out of it.When a user interacts with the view , the user can manipulate the state by generating messages.

 ```elm

 --View Syntax
view : Model -> Html Message
view model =

 ```

The syntax shows view as function which takes parameter as Model type and return type as Html which takes a Message

## Message

Message is a request from the user to alter the application state . Messages are passed as parameter to the update function.

```elm
--Message Syntax
type Message =  Add |Reset ...
```

The syntax shows a type Message which is a category of actions like Add,Reset . The elm application
will edit the state based on messages passed to it.If message is Add ,application could add a new a value to the model and if reset it may delete all values from the model.These decisions are made in update method.

## Update

The update function interprets  the messages which are passed as parameter to it and updates the model.

```elm
--Update Syntax
update : Message -> Model -> Model
update msg model =
  case msg of
    Reset -> ... -- if message is Reset do something
    Add ->
```

The syntax shows update is a function which takes **Message** as parameter,together with Model.The return type is the updated Model.For example if the view sends message of type Reset then it will match the case statement given above and the application will modify the model. This regenerates the view.
