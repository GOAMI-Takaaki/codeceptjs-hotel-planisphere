
Feature: マイページ
  ログイン後に表示される画面です。
  登録したユーザ情報が表示され、確認に使うことができます。
  また、新規登録したユーザの場合アイコン画像の設定と退会（情報削除）ができます。

  Scenario Outline: 定義済みユーザの情報が表示されること
    Given ホームを開く。
      And ログインペ―ジに移動する。
      And "<email>" "<password>"でログインする。
     Then マイペ―ジである事を確認する。
      And メールアドレスが"<email>"である事を確認する。
      And 氏名が"<username>"である事を確認する。
      And 会員ランクが"<rank>"である事を確認する。
      And 住所が"<address>"である事を確認する。
      And 電話番号が"<tel>"である事を確認する。
      And 性別が"<gender>"である事を確認する。
      And 生年月日が"<birthday>"である事を確認する。
      And お知らせが"<notification>"である事を確認する。

    Examples:
      | email               | password  | rank         | username  | address                    | tel        | gender | birthday      | notification |
      |	ichiro@example.com  | password  | プレミアム会員 | 山田一郎  | 東京都豊島区池袋            | 01234567891 | 男性   | 未登録         | 受け取る     |
      |	sakura@example.com  | pass1234  | 一般会員      | 松本さくら | 神奈川県横浜市鶴見区大黒ふ頭 | 未登録      | 女性   | 2000年4月1日   | 受け取らない |
      |	jun@example.com     | pa55w0rd! | プレミアム会員 | 林潤      | 大阪府大阪市北区梅田        | 01212341234 | その他 | 1988年12月17日 | 受け取らない |
      |	yoshiki@example.com | pass-pass | 一般会員      | 木村良樹   | 未登録                    | 01298765432  | 未登録 | 1992年8月31日 | 受け取る     |
