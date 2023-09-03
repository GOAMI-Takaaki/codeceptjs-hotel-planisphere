const { I } = inject();

const URL = 'https://hotel.testplanisphere.dev/ja/mypage.html';

Given('マイペ―ジを開く。', () => {
    I.amOnPage(URL);
});

Given('マイペ―ジに移動する。', () => {
  I.click('マイページ', locate('nav'));
});

Then('マイペ―ジである事を確認する。', () => {
  I.seeCurrentUrlEquals(URL);
  //  await expect(MyPage.header).toHaveText('マイページ');
});

Then('会員ランクが{string}である事を確認する。', (rank: string) => {
     I.see(rank);
});

export {};