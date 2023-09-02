Feature: Login
  シンプルなテキストインプットとボタンの画面です。
  ログイン情報はCookieに保存されます。
  会員登録画面で保存したユーザの他、登録済みのユーザ（下記）があります。

  Scenario: 正常系
    Given ログインペ―ジに移動する。
     Then ログインペ―ジである事を確認する。
      And "ichiro@example.com" "password"でログインする。
     Then マイペ―ジである事を確認する。
