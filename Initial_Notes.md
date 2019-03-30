
# What is Elm 

- Strongly Typed Functional Language
- Developer Focused Design
- Useability
- Excellent tooling
- Thorough Documentation
- Friendly Error Messages
- Maintainability

Functional Languages have following features

1. Immutable
2. HighOrder Functions
3. Monads
4. Currying
5. Recursion
6. Folding
7. List,Set,Tuple
8. Pattern Matching

Elm contains all of these features , so its a pure functional programming language.Elm simplifies and abstracts away these concepts into the language so programmer doesn't get lost in the complex concepts.

Elm mainly targets front end developers.Elm helps programmers to debug code by giving very friendly error messages compared to other functional programming languages.

## Maintainability

- Static Type Checking

This help to check one version of library with another version of library.This is also called *automatic semantic versioning*.Elm package manager has rules build into it like

- what is major revision
- what is minor revision

This helps to publish library without breaking pervious versions.This helps to make resuable library using elm and deploy without breaking the previous versions.


### Features

- Pure fuctional

We don't have side effects.That is function receive an input and generates and output. In the middle they can't update things outside of themselves.

- Interop with JS

Elm is designed to interoperable with javascript.

- Virtual Dom
- Rich Error Messages
- Zero Runtime Exceptions

### Convert number to string

```javascript
> 10 |> toString
"10" : String
> x = 10 |> toString
"10" : String
> x ++ "World"
"10World" : String

```

## Advanced Elm

- We discuss on how to make user interact with the page.
After that we need to add commands to the mix

- commands helps applcation to interact with something in the environment
and it is the initiatior
For eg: if you need to make http request that command is initiated by ur applciation and send to the server. (app --> env)
(app to server)

- (env-->app) We need to rap up module with concept of subscriptions. Subscriptions work in the opposite way of commands. Bcoz commands are used when application want to interact with something in the enviroment. So subscriptions are when the enviroment does something such as trigger an event or may be a webscoket is goin to receive message from server and your application is interested in that event.
(server to app)

### Virtual Dom

DOM is nothing but the element on the webpage. what advantages of a virtual dom ??Virtaul dom is proven to be fast . Algorithm decides exaclty which update to make and when to make them. this make rendering chenges becomes very fast.Efficicent as changes are done in one animation frame.
If page is rendered mutiple times if it is done manually will slow down the application.Virtual dome works functional approach ie every time we give same input , we get same output.
ONce you release app to prodution we are very sure it wil work as same way as it indented.

### Elm Architecture

Basic components of elm architecture

1. Model - job is it contains application state
2. View - Visual representation of state (knows how to take data and make web page out of it)
If we have view we need user to some way manipulate that, so we allow our view to generate these things called messages.
3. Message is a request from user to alter state . A message should go some place inorder to actually to perform alteration,that someplace is the update function.
4. Update function interprets the messages to update model


model-->View(generates)-->messages-->goesto-->update-->generates new model

newModel-->generates(View)-->newOpputunityFor(Messages)-->goestoUpdateFn-->generate new model..
cycle repeats

A command is triggered by a message

### Union Operator in elm (| )

### what does  fn1: String-> Cmd Msg (function signature mean??)

fnunction fn1 takes input as STring and returns a Command that takes input as message

### How to install eml http module

```javascript

elm-package install elm-lang/http 
elm-package install elm-lang/websocket

```

//loop
packagemanager
string
function to have pipeoperator
string --> string function , repel and also with variable