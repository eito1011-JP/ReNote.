![効率よく学習できる復習管理サービス](
https://user-images.githubusercontent.com/84311368/139574000-cac29f04-2ba0-4c7d-aacc-efb28bd09930.jpg
)
## Overview(アプリケーション概要)
学習する際に必要な復習のスケジュールを管理できるアプリケーションです。
## URL
http://localhost3000
## Demo(デモ)
![IWyTDUAzdvJsmVasiiV51635489022-1635489674](https://user-images.githubusercontent.com/84311368/140446759-efd1ffd9-39dd-43c9-80e2-1bac8e33a2dd.gif)

## why did I make(目指した課題解決)
個々人の記憶力によって最適な復習スケジュールを作れる様にし、できるだけ効率的に復習ができる様になることを目指しました。エビングハウスの忘却曲線を参考にし、手帳で復習スケジュールを管理していた友人を参考にしてアプリを開発しました。
## Function(洗い出した要件定義)
優先順位(高:1 中:2 低:3) | 機能 | 目的
-|-|-
1 | ユーザー登録、ログイン機能(devise) | アカウントごとに表示するデータを分ける |
1 | 投稿一覧機能 | ユーザーに作成した復習スケジュール一覧を見やすくする |
1 | 投稿編集機能 | 間違えて登録した投稿の情報を一覧から編集できる様にする |
1 | 投稿削除機能 | 完了した復習スケジュールを削除する |
1 | 投稿登録機能 | ユーザーが個々人の最適な復習スケジュールを作成できる様にする |
2 | ページネーション機能(kaminari) | ユーザーが作成した復習スケジュールを見やすくする |
3 | 投稿詳細機能 | 投稿した復習スケジュールの詳細をみれる様にする |
3 | i18n | ログインページ等を日本語化する |

## 使用技術
使用言語: ruby,フレームワーク: rails,ネットワーク: AWS,開発環境: Docker-Compose
## Function I’m gonna make
## DB(データベース設計)
