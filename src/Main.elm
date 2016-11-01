import Html exposing (..)
import Html.App as App
import Html.Events exposing (onClick)

main = App.beginnerProgram { model = model, view = view, update = update }

type alias Model = Int
model : Model
model = 0

type Msg = Inc | Dec | Double | Half

update : Msg -> Model -> Model
update msg model =
    case msg of
        Inc -> model + 1
        Dec -> model - 1
        Double -> model * 2
        Half -> model // 2

view : Model -> Html Msg
view model =
    div [] [
        div [] [ text (toString model) ],
        button [ onClick Inc ] [ text "Increase" ],
        button [ onClick Dec ] [ text "Decrease" ],
        button [ onClick Double ] [ text "Double" ],
        button [ onClick Half ] [ text "Half" ]
    ]
