Feature: 宿泊プラン一覧
  「宿泊予約」のメニューから表示できる画面です。
  表示されるプランは「未ログイン」「一般会員」「プレミアム会員」によって変わります。
  プラン情報はAjaxで非同期に読み込まれます（トップの一つを除く）。

  Scenario: 正常系
    Given ログインペ―ジに移動する。
      And "ichiro@example.com" "password"でログインする。
      And 宿泊予約ペ―ジに移動する。
      And プラン情報に移動する。
     Then プラン情報が正しいか確認する。

    Examples:
      | email               | password  | rank         |
      |	ichiro@example.com  | password  | プレミアム会員 |
      |	sakura@example.com  | pass1234  | 一般会員      |
      |	jun@example.com     | pa55w0rd! | プレミアム会員 |
      |	yoshiki@example.com | pass-pass | 一般会員      |