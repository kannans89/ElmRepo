-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/effects/http.html


-- https://package.elm-lang.org/packages/elm-lang/http/1.0.0/Http

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
  , Cmd.none  -- invoke api initally
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