Feature: ログイン
  シンプルなテキストインプットとボタンの画面です。
  ログイン情報はCookieに保存されます。
  会員登録画面で保存したユーザの他、登録済みのユーザ（下記）があります。

  Scenario: 定義済みユーザでログインができること
    Given ホームを開く。
      And ログインペ―ジに移動する。
      And "ichiro@example.com" "password"でログインする。
     Then マイペ―ジである事を確認する。

  Scenario: 未入力でエラーとなること
    Given ホームを開く。
      And ログインペ―ジに移動する。
      And "" ""でログインする。
     Then メールアドレス欄に"このフィールドを入力してください。"と言うエラーが表示される。
      And パスワード欄に"このフィールドを入力してください。"と言うエラーが表示される。

  Scenario: 未登録のユーザでエラーとなること
    Given ホームを開く。
      And ログインペ―ジに移動する。
      And "error@example.com" "error"でログインする。
     Then メールアドレス欄に"メールアドレスまたはパスワードが違います。"と言うエラーが表示される。
      And パスワード欄に"メールアドレスまたはパスワードが違います。"と言うエラーが表示される。
