module Main exposing (..)

import Browser exposing (Document)
import Html exposing (button, div, text)
import Html.Attributes exposing (class)


main : Program () String msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


init : () -> ( String, Cmd msg )
init _ =
    ( "Hello", Cmd.none )


view : String -> Document msg
view model =
    { title = "My Elm App"
    , body =
        [ div [ class "flex flex-col h-screen w-screen justify-center items-center bg-gray-800 text-white text-xl" ]
            [ text <| model ++ " World from Elm !!! 🚀"
            , button [ class "my-4 py-2 px-6 bg-indigo-700 font-bold text-white rounded" ] [ text "Click me" ]
            ]
        ]
    }


update : msg -> String -> ( String, Cmd msg )
update _ model =
    ( model, Cmd.none )
