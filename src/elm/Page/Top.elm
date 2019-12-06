module Page.Top exposing (view)

import Html exposing (Html, a, br, div, footer, h1, h2, header, i, li, main_, nav, p, section, table, tbody, td, text, tfoot, th, thead, tr, ul)
import Html.Attributes exposing (class, href, id, target)
import P1 as Elmp1
import Url.Builder exposing (crossOrigin)


view : List (Html msg)
view =
    [ siteHeader
    , main_ []
        [ hero
        , introduction
        , process
        , speakers
        , plan
        , connpass
        ]
    , siteFooter
    ]


siteHeader : Html msg
siteHeader =
    header [ class "navbar is-spaced is-primary" ]
        [ h1 [ class "navbar-brand" ]
            [ a [ class "navbar-item title is-4", href "/ELMP1" ] [ Elmp1.logo 90 ] ]
        , nav [ class "navbar-menu navbar-end" ]
            [ a [ class "navbar-item", href "#process" ] [ text "Process" ]
            , a [ class "navbar-item", href "#speakers" ] [ text "Speakers" ]
            , a [ class "navbar-item", href "#plan" ] [ text "Plan" ]
            , a [ class "navbar-item", href "#connpass" ] [ text "参加登録" ]
            ]
        ]


hero : Html msg
hero =
    section [ class "hero is-medium is-primary" ]
        [ div [ class "hero-body container" ]
            [ h1 [ class "title is-1" ] [ Elmp1.logo 400 ]
            , h2 [ class "subtitle has-text-weight-bold" ] [ text "Elm Prototype Series" ]
            , p [] [ text "2019年12月7日 13:00〜, 六本木にて" ]
            ]
        ]


introduction : Html msg
introduction =
    section [ id "prototyping", class "section" ]
        [ div [ class "container" ]
            [ div [ class "content" ]
                [ p [] [ text "「Elm で何ができるのか？」という疑問の答えを探求するイベントです。" ]
                , p []
                    [ text "上級者向けのイベントのように見えますが、実は Elm が「わからない」人のことを考えて計画しました。"
                    , text "トップクラスの Elm 開発者たちの話を、会場が一体となって解き明かします。"
                    , text "きっと「わからない」が「わかる！」に変わっていく面白さを体験できると思います。"
                    ]
                , p []
                    [ text "Elm Meetup in Summer に引き続き、今回も Fringe81 さんに会場協力をしていただきました。"
                    , text "さらにドイツからは elm-physics や elm-webgl の開発者：Andrey Kuzmin（"
                    , a [ href "https://twitter.com/unsoundscapes", target "_blank" ] [ text "@unsoundscapes" ]
                    , text "）さんが、来日予定です。"
                    ]
                , p [] [ text "実験的な要素が大きいイベントですが、ぜひご参加ください！" ]
                ]
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
                                [ h1 [ class "title is-6" ] [ text "トーク（20 min）" ]
                                , text "アイデアが形になるまでを追っていきます"
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
                , div [ class "message-body content has-background-light" ]
                    [ ul []
                        [ li [] [ text "無線LAN、プロジェクタ、各種変換アダプタ の利用が可能です" ]
                        , li [] [ text "発表に使用するスライドは SpeakerDeck などのサービスにアップロードしてください" ]
                        , li [] [ text "企画の性質上、ソースコードの公開にご協力ください" ]
                        ]
                    ]
                ]
            ]
        ]


speakers : Html msg
speakers =
    let
        listItem { time, speaker, title, description } =
            li [ class "column is-half" ]
                [ div []
                    [ div [ class "message is-dark" ]
                        [ div [ class "message-body has-background-light content" ]
                            [ p [ class "is-size-6" ] [ text time ]
                            , h1 [ class "title is-4" ] [ text title ]
                            , h2 [ class "subtitle is-6 has-text-weight-semibold" ] [ text speaker ]
                            , p [] [ text description ]
                            ]
                        ]
                    ]
                ]
    in
    section [ id "speakers", class "section" ]
        [ div [ class "container" ]
            [ h1 [ class "title" ] [ text "Speakers" ]
            , p [ class "content" ]
                [ text "今回の登壇者と発表テーマ"
                ]
            , ul [ class "columns" ]
                [ listItem
                    { time = "13:30-"
                    , speaker = "Andrey Kuzmin"
                    , title = "Elmで「ちゃぶ台返し」する方法"
                    , description = ""
                    }
                , listItem
                    { time = "14:00-"
                    , speaker = "Andrey Kuzmin"
                    , title = "Improvised presentation about games in Elm"
                    , description = ""
                    }
                ]
            , ul [ class "columns" ]
                [ listItem
                    { time = "14:30-"
                    , speaker = "miyamo"
                    , title = "ElmでRay Marchingする"
                    , description = ""
                    }
                , listItem
                    { time = "15:30-"
                    , speaker = "Cubbit"
                    , title = "ElmでつくるSVGエディタ"
                    , description = ""
                    }
                ]
            , ul [ class "columns" ]
                [ listItem
                    { time = "16:30-"
                    , speaker = "Luca"
                    , title = "Iro iro: One year of Elm in 50 slides"
                    , description = "From training material for colleagues and the community to videogames for my kids. From corporate applications to conferences. From masonry layout to 3D animations."
                    }
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
                        [ div [ class "message-body media has-background-light" ]
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
    section [ id "packages", class "section" ]
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
    section [ id "plan", class "section" ]
        [ div [ class "container" ]
            [ div [ class "content" ]
                [ h1 [ class "title" ] [ text "Plan" ]
                , h2 [ class "title is-5" ] [ text "会場" ]
                , p []
                    [ text "〒106-0032"
                    , br [] []
                    , text "東京都港区六本木3丁目2−1"
                    , br [] []
                    , text "住友不動産六本木グランドタワー 43階"
                    , br [] []
                    , text "Fringe81株式会社様 会議室"
                    ]
                , h2 [ class "title is-5" ] [ text "タイムテーブル" ]
                ]
            , table [ class "table is-fullwidth" ]
                [ thead []
                    [ tr []
                        [ th [] [ text "時刻" ]
                        , th [] [ text "イベント" ]
                        ]
                    ]
                , tbody []
                    [ tr []
                        [ td [] [ text "12:30 - 13:00" ]
                        , td [ class "content" ]
                            [ p [] [ text "開場" ]
                            , p [ class "has-text-primary" ] [ text "注意：13:00 までに必ず入場してください" ]
                            ]
                        ]
                    , tr []
                        [ td [] [ text "13:05 - 13:25" ]
                        , td [] [ text "Warm up" ]
                        ]
                    , tr []
                        [ td [] [ text "13:30 - 15:00" ]
                        , td [] [ text "Race 1" ]
                        ]
                    , tr []
                        [ td [] [ text "15:30 - 17:00" ]
                        , td [] [ text "Race 2" ]
                        ]
                    ]
                , tfoot []
                    [ tr []
                        [ td [] [ text "18:00-" ]
                        , td [] [ text "片付け" ]
                        ]
                    ]
                ]
            ]
        ]


connpass : Html msg
connpass =
    section [ id "connpass", class "section" ]
        [ div [ class "container" ]
            [ h1 [ class "title" ] [ text "参加登録" ]
            , div [ class "content" ]
                [ p []
                    [ a [ href "https://elm-jp.connpass.com/event/156016/", target "_blank" ] [ text "connpass" ]
                    , text " から参加登録をしてください。"
                    ]
                , p []
                    [ text "ご不明な点があれば 戸塚孝高（"
                    , a [ href "https://twitter.com/y047aka", target "_blank" ] [ text "@y047aka" ]
                    , text "）までお問い合わせください。"
                    ]
                ]
            ]
        ]


poem : Html msg
poem =
    section [ id "poem", class "section" ]
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


siteFooter : Html msg
siteFooter =
    footer [ class "footer has-background-dark has-text-white" ]
        [ div [ class "container" ]
            [ text "© 2019 y047aka" ]
        ]
