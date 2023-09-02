const { I } = inject();
// Add in your custom step files

Given('ログインペ―ジに移動する。', () => {
  I.amOnPage('https://hotel.testplanisphere.dev/ja/login.html');
});

Then('ログインペ―ジである事を確認する。', () => {
  I.seeCurrentUrlEquals("https://hotel.testplanisphere.dev/ja/login.html");
});

Given('{string} {string}でログインする。', (email: string, password:string) => {
  I.fillField('メールアドレス', email);
  I.fillField('パスワード', password);
  I.click('ログイン', '#login-button');
});

export {};