# Architecture

<!-- https://learning.oreilly.com/library/view/web-applications-with/9781484226100/html/434702_1_En_5_Chapter.xhtml -->

In this chapter we will discuss the standard way to create applications in Elm platform.Elm uses an architectural pattern similar to Model-View-Controller pattern .

1. Model
2. View
3. Message
4. Update

## Model

Model function deals with applications state.

## View

 View is a visual representation of the application state. View function knows how to take data and make web page out of it.When user interacts with the view , the user can manipulate the state by generating messages.

## Message

Message is a request from user to alter state . A message should go some place in order to actually to perform state change,that someplace is the update function.

## Update

The update function interprets  the messages to update model.

