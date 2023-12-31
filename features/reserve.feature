Feature: 宿泊予約
  宿泊の予約を行う画面です。新規ウィンドウで開きます。
  複数種類のインプットのほか、合計金額が入力内容で動的に計算され表示されます。
  基本料および宿泊数・人数の許容値は選択したプランで変わります。
  
  Scenario: 画面表示時の初期値が設定されていること_未ログイン
    Given ホームを開く。
      And 宿泊予約ペ―ジに移動する。
      And "お得な特典付きプラン"を選択する。
      And 宿泊予約画面へ切り替える。

     Then プラン名が"お得な特典付きプラン"である。
      And 宿泊日が明日である。
      And 宿泊数が"1"である。
      And 人数が"1"である。
      And "メールアドレス"が表示されていない。
      And "電話番号"が表示されていない。
      And 確認のご連絡を「メールでのご連絡」に指定する。
      And "メールアドレス"が表示されている。
      And "電話番号"が表示されていない。
      And "メールアドレス"が空欄である。
      And 確認のご連絡を「電話でのご連絡」に指定する。
      And "メールアドレス"が表示されていない。
      And "電話番号"が表示されている。
      And "電話番号"が空欄である。
      And 部屋情報が"スタンダードツイン"となっている。

  Scenario: 画面表示時の初期値が設定されていること_ログイン済み
    Given ホームを開く。
      And ログインペ―ジに移動する。
      And "ichiro@example.com" "password"でログインする。
      And 宿泊予約ペ―ジに移動する。
      And "プレミアムプラン"を選択する。
      And 宿泊予約画面へ切り替える。

     Then プラン名が"プレミアムプラン"である。
      And 宿泊日が明日である。
      And 宿泊数が"1"である。
      And 人数が"2"である。
      And 氏名が"山田一郎"となっている。
      And "メールアドレス"が表示されていない。
      And "電話番号"が表示されていない。
      And 確認のご連絡を「メールでのご連絡」に指定する。
      And "メールアドレス"が表示されている。
      And "電話番号"が表示されていない。
      And メールアドレスが"ichiro@example.com"となっている。
      And 確認のご連絡を「電話でのご連絡」に指定する。
      And "メールアドレス"が表示されていない。
      And "電話番号"が表示されている。
      And 電話番号が"01234567891"となっている。
      And 部屋情報が"プレミアムツイン"となっている。
  
  Scenario: 入力値が空白でエラーとなること
    Given ホームを開く。
      And 宿泊予約ペ―ジに移動する。
      And "お得な特典付きプラン"を選択する。
      And 宿泊予約画面へ切り替える。

      And 宿泊日に""を入力にする。
      And 宿泊数に""を入力にする。
      And 人数に""を入力にする。
      And 氏名に"テスト太郎"を入力にする。

     Then 宿泊日欄に"このフィールドを入力してください。"と言うエラーが表示される。
      And 宿泊数欄に"このフィールドを入力してください。"と言うエラーが表示される。
      And 人数欄に"このフィールドを入力してください。"と言うエラーが表示される。
  
  Scenario: 不正な入力値でエラーとなること_小
    Given ホームを開く。
      And 宿泊予約ペ―ジに移動する。
      And "お得な特典付きプラン"を選択する。
      And 宿泊予約画面へ切り替える。

      And 宿泊日を今日にする。
      And 宿泊数に"0"を入力にする。
      And 人数に"0"を入力にする。
      And 氏名に"テスト太郎"を入力にする。

     Then 宿泊日欄に"翌日以降の日付を入力してください。"と言うエラーが表示される。
      And 宿泊数欄に"1以上の値を入力してください。"と言うエラーが表示される。
      And 人数欄に"1以上の値を入力してください。"と言うエラーが表示される。

  Scenario: 不正な入力値でエラーとなること_大
    Given ホームを開く。
      And 宿泊予約ペ―ジに移動する。
      And "お得な特典付きプラン"を選択する。
      And 宿泊予約画面へ切り替える。

      And 宿泊日を91日後にする。
      And 宿泊数に"10"を入力にする。
      And 人数に"10"を入力にする。
      And 氏名に"テスト太郎"を入力にする。

     Then 宿泊日欄に"3ヶ月以内の日付を入力してください。"と言うエラーが表示される。
      And 宿泊数欄に"9以下の値を入力してください。"と言うエラーが表示される。
      And 人数欄に"9以下の値を入力してください。"と言うエラーが表示される。

  Scenario: 不正な入力値でエラーとなること_文字列
    Given ホームを開く。
      And 宿泊予約ペ―ジに移動する。
      And "お得な特典付きプラン"を選択する。
      And 宿泊予約画面へ切り替える。

      And 宿泊日を"12/3//345"にする。
      And 宿泊数に"a"を入力にする。
      And 人数に"a"を入力にする。
      And 氏名に"テスト太郎"を入力にする。

     Then 宿泊日欄に"有効な値を入力してください。"と言うエラーが表示される。
      And 宿泊数欄に"このフィールドを入力してください。"と言うエラーが表示される。
      And 人数欄に"このフィールドを入力してください。"と言うエラーが表示される。

  Scenario: 不正な入力値でエラーとなること_確定時_メール選択
    Given ホームを開く。
      And 宿泊予約ペ―ジに移動する。
      And "お得な特典付きプラン"を選択する。
      And 宿泊予約画面へ切り替える。
  
      And 氏名に""を入力にする。
      And 確認のご連絡を「メールでのご連絡」に指定する。
      And メールアドレスに""を入力にする。
      And 予約内容を確認する。

     Then 氏名欄に"このフィールドを入力してください。"と言うエラーが表示される。
      And メールアドレス欄に"このフィールドを入力してください。"と言うエラーが表示される。

  Scenario: 不正な入力値でエラーとなること_確定時_電話選択
    Given ホームを開く。
      And 宿泊予約ペ―ジに移動する。
      And "お得な特典付きプラン"を選択する。
      And 宿泊予約画面へ切り替える。
  
      And 氏名に""を入力にする。
      And 確認のご連絡を「電話でのご連絡」に指定する。
      And 電話番号に""を入力にする。
      And 予約内容を確認する。
  
     Then 氏名欄に"このフィールドを入力してください。"と言うエラーが表示される。
      And 電話番号欄に"このフィールドを入力してください。"と言うエラーが表示される。

  Scenario: 宿泊予約が完了すること_未ログイン_初期値
    Given ホームを開く。
      And 宿泊予約ペ―ジに移動する。
      And "お得な特典付きプラン"を選択する。
      And 宿泊予約画面へ切り替える。
  
      And 氏名に"テスト太郎"を入力にする。
      And 確認のご連絡を「希望しない」に指定する。
      And 予約内容を確認する。

     Then 合計が正しく表示されている。
      And プランが"お得な特典付きプラン"となっている。
      And 期間が1日後から1泊となっている。
      And 人数が"1"名様となっている。
      And 追加プランに"なし"が指定されている。
      And お名前が"テスト太郎"様となっている。
      And 確認のご連絡が"希望しない"となっている。
      And ご要望・ご連絡事項等が"なし"となっている。

    Given この内容で予約する。
     Then ダイアログに"ご来館、心よりお待ちしております。"と言うメッセージが表示される。
      And ダイアログを閉じる。
      And 宿泊予約確認が閉じられる。

  
  Scenario: 宿泊予約が完了すること_ログイン
    Given ホームを開く。
      And ログインペ―ジに移動する。
      And "ichiro@example.com" "password"でログインする。

      And 宿泊予約ペ―ジに移動する。
      And "プレミアムプラン"を選択する。
      And 宿泊予約画面へ切り替える。

      And 宿泊日を90日後にする。
      And 宿泊数に"2"を入力にする。
      And 人数に"4"を入力にする。
      And 追加プランに「朝食バイキング」を指定する。
      And 追加プランに「昼からチェックインプラン」を指定する。
      And 追加プランに「お得な観光プラン」を指定しない。
      And 確認のご連絡を「メールでのご連絡」に指定する。
      And 人数に"4"を入力にする。
      And ご要望・ご連絡事項等に"あああ\n\nいいいいいいい\nうう"を入力にする。
      And 予約内容を確認する。
  
     Then 合計が90日後に2泊の料金となっている。
      And プランが"プレミアムプラン"となっている。
      And 期間が90日後から2泊となっている。
      And 人数が"4"名様となっている。
      And 追加プランに"朝食バイキング"が指定されている。
      And 追加プランに"昼からチェックインプラン"が指定されている。
      And 追加プランに"お得な観光プラン"が指定されていない。
      And お名前が"山田一郎"様となっている。
      And 確認のご連絡が"メール：ichiro@example.com"となっている。
      And ご要望・ご連絡事項等が"あああ\n\nいいいいいいい\nうう"となっている。

    Given この内容で予約する。
     Then ダイアログに"ご来館、心よりお待ちしております。"と言うメッセージが表示される。
      And ダイアログを閉じる。
      And 宿泊予約確認が閉じられる。