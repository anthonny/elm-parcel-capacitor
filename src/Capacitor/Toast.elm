port module Capacitor.Toast exposing (Duration(..), Options, Position(..), new, show, withDuration, withPosition)

import Json.Encode as Encode


type Duration
    = Short
    | Long


type Position
    = Top
    | Center
    | Bottom


type alias Options =
    { duration : Duration
    , position : Position
    , text : String
    }



-- BUILDER


new : String -> Options
new text =
    { text = text
    , duration = Short
    , position = Top
    }


show : Options -> Cmd msg
show options =
    capacitorToastShow (options |> encodeOptions)


withDuration : Duration -> Options -> Options
withDuration duration options =
    { options
        | duration = duration
    }


withPosition : Position -> Options -> Options
withPosition position options =
    { options
        | position = position
    }



-- HELPER


durationToString : Duration -> String
durationToString position =
    case position of
        Short ->
            "short"

        Long ->
            "long"


positionToString : Position -> String
positionToString position =
    case position of
        Top ->
            "top"

        Center ->
            "center"

        Bottom ->
            "bottom"



-- ENCODER


encodeOptions : Options -> Encode.Value
encodeOptions options =
    Encode.object
        [ ( "text", Encode.string options.text )
        , ( "duration", options.duration |> durationToString |> Encode.string )
        , ( "position", options.position |> positionToString |> Encode.string )
        ]



-- PORTS


port capacitorToastShow : Encode.Value -> Cmd msg
