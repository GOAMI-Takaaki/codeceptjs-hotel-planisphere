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

Then('プラン数が{int}である。', (count: number) => {
  I.seeNumberOfVisibleElements('.card-title', count);
});

Then('以下のプランが表示されている。', (table: any) => {
  const dataTableArgument = new DataTableArgument(table);
  const hashes = dataTableArgument.hashes();
  for (const hash of hashes) {
     I.see(hash.plan);
  }
});

Given('{string}を選択する。', (plan: string) => {
  I.click(locate('a').withText('このプランで予約').after(locate('h5').withText(plan)));
});

Given('宿泊予約画面へ切り替える。', () => {
  I.switchToNextTab();
});

export {};