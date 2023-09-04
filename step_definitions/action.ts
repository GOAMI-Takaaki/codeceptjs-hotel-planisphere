const { I } = inject();

Given('{int}秒待つ。', (sec: number) => {
  I.wait(sec);
});

Given('確認を受け入れる。', () => {
  I.acceptPopup();
});

Then('{string}が表示されている。', (field: string) => {
    I.see(field);
});

Then('{string}が表示されていない。', (field: string) => {
  I.dontSee(field);
});

Then('{string}が空欄である。', (field: string) => {
  I.seeInField(field, '');
});

export {};