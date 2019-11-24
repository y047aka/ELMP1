module P1 exposing (logo)

import Color
import Html exposing (Html, text)
import TypedSvg exposing (g, rect, svg, text_)
import TypedSvg.Attributes exposing (fill, fontFamily, stroke, viewBox)
import TypedSvg.Attributes.InPx exposing (fontSize, height, rx, ry, strokeWidth, width, x, y)
import TypedSvg.Types exposing (Fill(..), Length(..))


logo : Float -> Html msg
logo w =
    svg
        [ width w
        , height (w / 2)
        , viewBox 0 0 500 250
        ]
        [ g []
            [ g [ fill FillNone, stroke Color.white, strokeWidth 7 ]
                [ rect [ x 280, y 10, rx 20, ry 20, width 200, height 200 ] []
                ]
            , text_
                [ x 0, y 165, fill (Fill Color.white), fontFamily [ "HelveticaNeue-CondensedBold"    ], fontSize 150 ]
                [ text "ELM" ]
            , text_
                [ x 310, y 165, fill (Fill Color.white), fontFamily [ "HelveticaNeue-CondensedBold"    ], fontSize 150 ]
                [ text "P1" ]
            ]
        ]
