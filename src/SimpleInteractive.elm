import Html exposing (..)
import Html.App as App
import Html.Events exposing (onClick)

main = App.beginnerProgram { model = 0, view = view, update = update }

type Action = Reset | Inc | Dec | Double | Half | Fib

fib : Int -> Int
fib n = if n < 2 then n else fib (n-1) + fib (n-2)

update : Action -> Model -> Model
update msg model =
    case msg of
        Reset -> 0
        Inc -> model + 1
        Dec -> model - 1
        Double -> model * 2
        Half -> model // 2
        Fib -> fib model

view : Model -> Html Action
view model =
    div [] [
        div [] [ text (toString model) ],
        button [ onClick Reset ] [ text "Reset" ],
        button [ onClick Inc ] [ text "Increase" ],
        button [ onClick Dec ] [ text "Decrease" ],
        button [ onClick Double ] [ text "Double" ],
        button [ onClick Half ] [ text "Half" ],
        button [ onClick Fib ] [ text "Fibonacci"]
    ]
