module View exposing (..)

import Html exposing (Html, div, text, a)
import Html.Attributes exposing (href)
import Messages exposing (Msg)
import Models exposing (Model, Route(..))
import Routing exposing (homePath, otherPath)


view : Model -> Html Msg
view model =
    case model.route of
        HomeRoute ->
            div []
                [ text model.greeting
                , a [ href otherPath ] [ text "go to other page" ]
                ]

        OtherRoute ->
            div []
                [ text "Another page"
                , a [ href homePath ] [ text "go to home page" ]
                ]

        NotFoundRoute ->
            div [] [ text "Not found" ]
