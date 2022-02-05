module Main exposing (..)

import Browser exposing (Document)
import Capacitor.Toast as Toast
import Html exposing (button, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


main : Program () String Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


init : () -> ( String, Cmd Msg )
init _ =
    ( "Hello", Cmd.none )


view : String -> Document Msg
view model =
    { title = "My Elm App"
    , body =
        [ div [ class "flex flex-col h-screen w-screen justify-center items-center bg-gray-50 text-gray-900 text-xl" ]
            [ text <| model ++ " World from Elm !!! 🚀"
            , button
                [ class "my-4 py-1 px-6 bg-indigo-700 text-white rounded text-lg"
                , onClick
                    (Toast.new "Fly to the moon 🌔"
                        |> Toast.withPosition Toast.Bottom
                        |> ToastMessage
                    )
                ]
                [ text "Show Toast" ]
            ]
        ]
    }


type Msg
    = ToastMessage Toast.Options


update : Msg -> String -> ( String, Cmd Msg )
update msg model =
    case msg of
        ToastMessage options ->
            ( model, Toast.show options )
