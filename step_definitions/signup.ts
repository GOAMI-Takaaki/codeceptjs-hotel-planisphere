const { I } = inject();

const URL = 'https://hotel.testplanisphere.dev/ja/signup.html';

Given('会員登録ペ―ジを開く。', () => {
    I.amOnPage(URL);
});  

Given('会員登録ペ―ジに移動する。', () => {
  I.click('会員登録', locate('nav'));
});

Then('会員登録ペ―ジである事を確認する。', () => {
  I.seeCurrentUrlEquals(URL);
});

export {};