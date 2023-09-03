const { I } = inject();

const URL = 'https://hotel.testplanisphere.dev/ja/plans.html';

Given('宿泊予約ペ―ジを開く', () => {
  I.amOnPage(URL);
});

Given('宿泊予約ペ―ジに移動する。', () => {
  I.click('宿泊予約', locate('nav'));
});

Then('宿泊予約ペ―ジである事を確認する。', () => {
  I.seeCurrentUrlEquals(URL);
});

Then('会員限定がある事を確認する。', () => {
     I.see('会員限定');
});

Then('会員限定がない事を確認する。', () => {
     I.dontSee('会員限定');
});

Then('プレミアム会員限定がある事を確認する。', () => {
     I.see('プレミアム会員限定');
});

Then('プレミアム会員限定がない事を確認する。', () => {
     I.dontSee('プレミアム会員限定');
});

export {};