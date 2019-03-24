-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/effects/http.html


-- https://package.elm-lang.org/packages/elm-lang/http/1.0.0/Http

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode as Decode



main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



-- MODEL


type alias Model =
  { topic : String
  , factText : String
  }


init :  (Model, Cmd Msg)
init  =
  ( Model "NumbersAPI" "NoFacts_Initial(factText)" -- set model two fields
  , getRadmonNumberFromAPI   -- invoke api initally
  )



-- UPDATE


type Msg
  = ShowFacts
  | NewFactArrived (Result Http.Error String)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    ShowFacts ->
      (model, getRadmonNumberFromAPI)

    NewFactArrived (Ok newFact) ->
      (Model "DataArrived" newFact, Cmd.none)

    NewFactArrived (Err _) ->
      (model, Cmd.none)



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ h2 [] [text model.topic]
    , button [ onClick ShowFacts ] [ text "show facts" ]
    , br [] []
    , h3 [][text model.factText]
    ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- HTTP


getRadmonNumberFromAPI : Cmd Msg
getRadmonNumberFromAPI  =
  let
    url =
      "http://numbersapi.com/42"
  in
    Http.send NewFactArrived (Http.getString url)