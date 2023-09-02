Feature: Login

  Scenario: 正常系
    Given ログインペ―ジに移動する。
     Then ログインペ―ジである事を確認する。
      And "ichiro@example.com" "password"でログインする。
     Then マイペ―ジである事を確認する。
