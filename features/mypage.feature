Feature: マイページ

  Scenario Outline: 正常系
    Given ログインペ―ジに移動する。
      And "<email>" "<password>"でログインする。
      And マイペ―ジに移動する。
     Then マイペ―ジである事を確認する。
      And 会員ランクが"<rank>"か確認する。
      And 3秒待つ。

    Examples:
      | email               | password  | rank         |
      |	ichiro@example.com  | password  | プレミアム会員 |
      |	sakura@example.com  | pass1234  | 一般会員      |
      |	jun@example.com     | pa55w0rd! | プレミアム会員 |
      |	yoshiki@example.com | pass-pass | 一般会員      |
