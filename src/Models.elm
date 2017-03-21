module Models exposing (..)


type Route
    = HomeRoute
    | OtherRoute
    | NotFoundRoute


type alias Model =
    { greeting : String
    , route : Route
    }
