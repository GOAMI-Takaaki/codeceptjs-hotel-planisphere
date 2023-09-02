const { I } = inject();

Given('{int}秒待つ。', (sec: number) => {
  I.wait(sec)
});

export {};