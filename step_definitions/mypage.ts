const { I } = inject();

Given('マイペ―ジに移動する。', () => {
    I.amOnPage('https://hotel.testplanisphere.dev/ja/mypage.html');
});

Then('マイペ―ジである事を確認する。', () => {
  I.seeCurrentUrlEquals("https://hotel.testplanisphere.dev/ja/mypage.html");
});

Then('会員ランクが{string}か確認する。', (rank: string) => {
     I.see(rank);
});

export {};