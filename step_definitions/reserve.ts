const { I } = inject();

Given('プラン名が{string}である。', (planName: string) => {
  I.see(planName);
});

Then('宿泊日が明日である。', () => {
  const date = new Date();
  date.setDate(date.getDate() + 1);
  const year = `${date.getFullYear()}`;
  const month = `${date.getMonth() + 1}`.padStart(2, '0');
  const day = `${date.getDate()}`.padStart(2, '0');
  const tomorrow = `${year}/${month}/${day}`;

  I.seeInField('宿泊日', tomorrow);
});
  
Then('宿泊数が{int}である。', (reserveTerm: number) => {
  I.seeInField('宿泊数', reserveTerm);
});

Then('人数が{int}である。', (headCount: number) => {
    I.seeInField('人数', headCount);
});

Given('確認のご連絡を「メールでのご連絡」に指定する。', () => {
    I.selectOption('確認のご連絡','メールでのご連絡');
});

Given('確認のご連絡を「電話でのご連絡」に指定する。', () => {
    I.selectOption('確認のご連絡','電話でのご連絡');
});

Given('氏名が{string}となっている。', (username: string) => {
  I.seeInField('氏名', username);
});

Given('メールアドレスが{string}となっている。', (email: string) => {
  I.seeInField('メールアドレス', email);
});

Given('電話番号が{string}となっている。', (tel: string) => {
  I.seeInField('電話番号', tel);
});

Then('部屋情報が{string}となっている。', (room: string) => {
  I.switchTo('iframe[name="room"]');
  I.grabCurrentUrl().then((value: string) => {console.log(value)})
  I.see(room);
});

export {};