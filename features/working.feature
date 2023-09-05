Feature: 作業用
  作成時に利用します。
  以下のコマンドで実行します。
  npx codeceptjs run features/working.feature --verbose 
  
  Scenario: プレミアム会員でログイン状態でプラン一覧が表示されること
    Given ホームを開く。
      And ログインペ―ジに移動する。
      And "ichiro@example.com" "password"でログインする。
      And 宿泊予約ペ―ジに移動する。
     Then プラン数が10である。
      And 以下のプランが表示されている。
      | plan                   |
      | お得な特典付きプラン     |
      | プレミアムプラン         |
      | ディナー付きプラン       |
      | お得なプラン            |
      | 素泊まり                |
      | 出張ビジネスプラン       |
      | エステ・マッサージプラン |
      | 貸し切り露天風呂プラン   |
      | カップル限定プラン       |
      | テーマパーク優待プラン   |