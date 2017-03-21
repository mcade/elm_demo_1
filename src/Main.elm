module Main exposing (..)

import Html exposing (Html, div, text, program)
import Messages exposing (Msg(..))
import Models exposing (Model, Route(..))
import Update exposing (update)
import View exposing (view)
import Navigation exposing (Location)
import Routing exposing (parseLocation)


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            parseLocation location
    in
        { greeting = "Hello"
        , route = currentRoute
        }
            ! [ Cmd.none ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
