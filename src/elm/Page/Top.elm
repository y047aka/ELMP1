module Page.Top exposing (view)

import Html exposing (Html, a, br, div, footer, h1, h2, header, i, li, main_, nav, p, section, table, td, text, th, tr, ul)
import Html.Attributes exposing (class, href, id, target)
import Url.Builder exposing (crossOrigin)


view : List (Html msg)
view =
    [ siteHeader
    , main_ []
        [ hero
        , process
        , introduction
        , elmPackages
        , plan
        ]
    , siteFooter
    ]


siteHeader : Html msg
siteHeader =
    header [ class "navbar is-spaced is-primary" ]
        [ h1 [ class "navbar-brand" ]
            [ a [ class "navbar-item title is-4", href "/" ] [ text "ELM P1" ] ]
        , nav [ class "navbar-menu navbar-end" ]
            [ a [ class "navbar-item", href "#prototyping" ] [ text "Prototyping" ]
            , a [ class "navbar-item", href "#packages" ] [ text "Packages" ]
            , a [ class "navbar-item", href "#entry" ] [ text "参加する" ]
            ]
        ]


hero : Html msg
hero =
    section [ class "hero is-medium is-primary" ]
        [ div [ class "hero-body container" ]
            [ h1 [ class "title is-1" ] [ text "ELM P1" ]
            , h2 [ class "subtitle has-text-weight-bold" ] [ text "Elm を使ったプロトタイピングのためのイベント" ]
            , p [] [ text "2019年12月7日 13:00〜, 六本木にて" ]
            ]
        ]


process : Html msg
process =
    section [ id "process", class "section" ]
        [ div [ class "container" ]
            [ h1 [ class "title" ] [ text "Process" ]
            , p [ class "content" ] [ text "それぞれの発表は以下のような手順で進行します。" ]
            , ul [ class "columns" ]
                [ li [ class "column" ]
                    [ div [ class "notification" ]
                        [ div [ class "media" ]
                            [ div [ class "media-left is-size-3 has-text-weight-semibold" ] [ text "1" ]
                            , div [ class "media-content content" ]
                                [ h1 [ class "title is-6" ] [ text "プレゼンテーション（10 min）" ]
                                , text "ここだけであれば、いつもの LT ですが…"
                                ]
                            ]
                        ]
                    ]
                , li [ class "column" ]
                    [ div [ class "notification" ]
                        [ div [ class "media" ]
                            [ div [ class "media-left is-size-3 has-text-weight-semibold" ] [ text "2" ]
                            , div [ class "media-content content" ]
                                [ h1 [ class "title is-6" ] [ text "質疑応答 / コードリーディング（20 min）" ]
                                , text "アイデアが形になるまでを徹底的に追っていきます"
                                ]
                            ]
                        ]
                    ]
                ]
            , div [ class "content" ]
                [ p []
                    [ text "これを繰り返すことでイベントが進んでいきます。" ]
                , p []
                    [ text "発表を聞いて印象に残ったことを積極的に質問してください。"
                    , br [] []
                    , text "反響の大きかった内容については、後日ハンズオンイベントなどでも取り上げていきます。"
                    ]
                ]
            , div [ class "message is-dark" ]
                [ h1 [ class "message-header" ] [ text "発表者の方へ" ]
                , p [ class "message-body" ] [ text "企画の性質上、ソースコードの公開にご協力ください" ]
                ]
            ]
        ]


introduction : Html msg
introduction =
    section [ id "prototyping", class "section" ]
        [ div [ class "container" ]
            [ h1 [ class "title" ] [ text "Prototyping" ]
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


elmPackages : Html msg
elmPackages =
    let
        listItem { developer, packageName, category } =
            li [ class "column" ]
                [ a
                    [ href <|
                        crossOrigin "https://package.elm-lang.org/packages" [ developer, packageName, "latest" ] []
                    , target "_blank"
                    ]
                    [ div [ class "message is-dark" ]
                        [ div [ class "message-body media" ]
                            [ div [ class "media-content" ]
                                [ h2 [ class "subtitle is-6 has-text-weight-semibold" ] [ text (developer ++ " /") ]
                                , h1 [ class "title is-4" ] [ text packageName ]
                                , p [ class "is-size-7" ] [ text category ]
                                ]
                            , div [ class "media-right icon" ]
                                [ i [ class "fas fa-lg fa-angle-double-right" ] [] ]
                            ]
                        ]
                    ]
                ]
    in
    section [ id "themes", class "section" ]
        [ div [ class "container" ]
            [ h1 [ class "title" ] [ text "Packages" ]
            , p [ class "content" ]
                [ text "Elm においても、様々なパッケージの開発がおこなわれています。"
                , br [] []
                , text "これらのパッケージの最新情報も得られる場にしたいと考えています。"
                ]
            , ul [ class "columns" ]
                [ listItem
                    { developer = "elm-community"
                    , packageName = "typed-svg"
                    , category = "SVG"
                    }
                , listItem
                    { developer = "elm-explorations"
                    , packageName = "webgl"
                    , category = "3DCG"
                    }
                , listItem
                    { developer = "gampleman"
                    , packageName = "elm-visualization"
                    , category = "データ・ビジュアライゼーション"
                    }
                ]
            , ul [ class "columns" ]
                [ listItem
                    { developer = "gampleman"
                    , packageName = "elm-mapbox"
                    , category = "地図"
                    }
                , listItem
                    { developer = "w0rm"
                    , packageName = "elm-physics"
                    , category = "物理シミュレーション"
                    }
                , listItem
                    { developer = "w0rm"
                    , packageName = "elm-slice-show"
                    , category = "プレゼンテーション・ツール"
                    }
                ]
            ]
        ]


plan : Html msg
plan =
    section [ id "entry", class "section" ]
        [ div [ class "container" ]
            [ h1 [ class "title" ] [ text "Plan" ]
            , p [ class "content" ]
                [ a [ href "https://elm-jp.connpass.com/event/156016/", target "_blank" ] [ text "Connpass" ]
                , text " から参加登録をしてください。"
                ]
            , table [ class "table is-fullwidth" ]
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


siteFooter : Html msg
siteFooter =
    footer [ class "footer has-background-dark has-text-white" ]
        [ div [ class "container" ]
            [ text "© 2019 y047aka" ]
        ]
