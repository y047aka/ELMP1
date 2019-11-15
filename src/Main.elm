module Main exposing (main)

import Browser exposing (Document)
import Html exposing (a, br, div, footer, h1, h2, header, li, main_, nav, p, section, table, tbody, td, text, th, thead, tr, ul)
import Html.Attributes exposing (class, href, id, target)


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }



-- MODEL


type alias Model =
    { userState : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model ""
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Document Msg
view _ =
    { title = "Elm Prototyping : Class 1"
    , body =
        [ header [ class "navbar is-dark" ]
            [ h1 [ class "navbar-brand" ]
                [ a [ class "navbar-item", href "/" ] [ text "ELMP1" ] ]
            , nav [ class "navbar-menu navbar-end" ]
                [ a [ class "navbar-item", href "#concept" ] [ text "コンセプト" ]
                , a [ class "navbar-item", href "#themes" ] [ text "トークテーマ" ]
                , a [ class "navbar-item", href "#entry" ] [ text "参加する" ]
                ]
            ]
        , main_ []
            [ section [ class "hero is-medium is-primary" ]
                [ div [ class "hero-body container" ]
                    [ h1 [ class "title" ] [ text "ELMP1" ]
                    , h2 [ class "subtitle" ] [ text "Elm を使ったプロトタイピングのためのイベント" ]
                    , p [] [ text "2019年12月7日 13:00〜, 六本木にて" ]
                    ]
                ]
            , section [ id "concept", class "section" ]
                [ div [ class "container" ]
                    [ h1 [ class "title" ] [ text "Elm Prototyping : Class 1" ]
                    , div [ class "content" ]
                        [ p []
                            [ text "通常のイベントでは、より多くの人が理解できるテーマの設定が重要です。"
                            , text "この制約を外した時に何が起こるのでしょうか。"
                            , text "Elm のより尖ったイベントを実施したいと思い、プロトタイピングのためのイベントを企画しました。"
                            ]
                        , p [] [ text "今回の ELMP1 では、ときに荒削りなプロトタイピングの情報をターゲットにします。" ]
                        , p []
                            [ text "もしかしたら、敷居の高いイベントになってしまうかもしれません。"
                            , text "トップクラスの Elm 開発者の話を、聴衆が一丸となって解き明かしていくようなイベントになれば面白いと考えています。"
                            , text "ある意味では、上級者の「わかる」よりも、初級者の「わからない」が重要なイベントになるでしょう。"
                            , text "時間が足りなかった場合や、反響が大きかった内容については、後日ハンズオンを企画するなどしてサポートしていきます。"
                            ]
                        , p [] [ text "実験的な要素が大きいイベントですが、ぜひ参加してみてください。" ]
                        ]
                    ]
                ]
            , section [ id "themes", class "section" ]
                [ div [ class "container" ]
                    [ h1 [ class "title" ] [ text "パッケージの最新情報を" ]
                    , p [ class "content" ]
                        [ text "Elm においても、様々なパッケージの開発がおこなわれています。"
                        , br [] []
                        , text "これらのパッケージの最新情報も得られる場にしたいと考えています。"
                        ]
                    , ul [ class "columns" ]
                        [ li [ class "column" ]
                            [ a [ href "https://package.elm-lang.org/packages/elm-community/typed-svg/latest/", target "_blank" ]
                                [ div [ class "notification" ]
                                    [ h2 [ class "subtitle" ] [ text "elm-community" ]
                                    , h1 [ class "title" ] [ text "typed-svg" ]
                                    , p [] [ text "SVG" ]
                                    ]
                                ]
                            ]
                        , li [ class "column" ]
                            [ a [ href "https://package.elm-lang.org/packages/elm-explorations/webgl/latest/", target "_blank" ]
                                [ div [ class "notification" ]
                                    [ h2 [ class "subtitle" ] [ text "elm-explorations" ]
                                    , h1 [ class "title" ] [ text "webgl" ]
                                    , p [] [ text "3DCG" ]
                                    ]
                                ]
                            ]
                        , li [ class "column" ]
                            [ a [ href "https://package.elm-lang.org/packages/gampleman/elm-visualization/latest/", target "_blank" ]
                                [ div [ class "notification" ]
                                    [ h2 [ class "subtitle" ] [ text "gampleman" ]
                                    , h1 [ class "title" ] [ text "elm-visualization" ]
                                    , p [] [ text "データ・ビジュアライゼーション" ]
                                    ]
                                ]
                            ]
                        ]
                    , ul [ class "columns" ]
                        [ li [ class "column" ]
                            [ a [ href "https://package.elm-lang.org/packages/gampleman/elm-mapbox/4.1.0/", target "_blank" ]
                                [ div [ class "notification" ]
                                    [ h2 [ class "subtitle" ] [ text "gampleman" ]
                                    , h1 [ class "title" ] [ text "elm-mapbox" ]
                                    , p [] [ text "地図" ]
                                    ]
                                ]
                            ]
                        , li [ class "column" ]
                            [ a [ href "https://package.elm-lang.org/packages/w0rm/elm-physics/latest", target "_blank" ]
                                [ div [ class "notification" ]
                                    [ h2 [ class "subtitle" ] [ text "w0rm" ]
                                    , h1 [ class "title" ] [ text "elm-physics" ]
                                    , p [] [ text "物理シミュレーション" ]
                                    ]
                                ]
                            ]
                        , li [ class "column" ]
                            [ a [ href "https://package.elm-lang.org/packages/w0rm/elm-slice-show/latest", target "_blank" ]
                                [ div [ class "notification" ]
                                    [ h2 [ class "subtitle" ] [ text "w0rm" ]
                                    , h1 [ class "title" ] [ text "elm-slice-show" ]
                                    , p [] [ text "プレゼンテーション・ツール" ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            , section [ id "entry", class "section" ]
                [ div [ class "container" ]
                    [ h1 [ class "title" ] [ text "詳細情報" ]
                    , p [ class "content" ]
                        [ a [ href "https://elm-jp.connpass.com/event/156016/", target "_blank" ] [ text "Connpass" ]
                        , text " から参加登録をしてください。"
                        ]
                    , table [ class "table" ]
                        [ tr []
                            [ th [] [ text "日程" ]
                            , td []
                                [ text "2019年12月7日 13:00 開始"
                                , br [] []
                                , text "※ 途中入場不可"
                                ]
                            ]
                        , tr []
                            [ th [] [ text "会場" ]
                            , td []
                                [ text "〒106-0032"
                                , br [] []
                                , text "東京都港区六本木3丁目2−1"
                                , br [] []
                                , text "住友不動産六本木グランドタワー 43階"
                                , br [] []
                                , text "Fringe81株式会社様 会議室"
                                ]
                            ]
                        , tr []
                            [ th [] [ text "内容" ]
                            , td [ class "content" ]
                                [ ul []
                                    [ li []
                                        [ text "基調講演：Andrey Kuzmin（"
                                        , a [ href "https://twitter.com/unsoundscapes", target "_blank" ] [ text "@unsoundscapes" ]
                                        , text "）"
                                        ]
                                    , li [] [ text "ライトニングトーク（事前募集）" ]
                                    ]
                                ]
                            ]
                        ]
                    , p []
                        [ text "詳細が決定し次第、更新します"
                        , br [] []
                        , text "更新の際には、戸塚のTwitter（"
                        , a [ href "https://twitter.com/y047aka", target "_blank" ] [ text "@y047aka" ]
                        , text "）から情報発信予定"
                        ]
                    ]
                ]
            ]
        , footer [ class "footer" ]
            [ div [ class "container" ]
                [ text "© 2019 y047aka" ]
            ]
        ]
    }
