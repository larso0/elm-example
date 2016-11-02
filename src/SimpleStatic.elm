import Html exposing (..)

main =
    div [] [
        h1 [] [ text "Hello world!" ],
        p [] [
            text "This is a paragraph ",
            b [] [ text "with some bold text."]
        ],
        hr [] []
    ]
