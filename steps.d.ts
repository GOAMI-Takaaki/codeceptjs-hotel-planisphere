/// <reference types='codeceptjs' />
type steps_file = typeof import('./steps_file');
type GlobalHelper = import('./src/helper/global_helper');

declare namespace CodeceptJS {
  interface SupportObject { I: I, current: any }
  interface Methods extends Playwright, GlobalHelper {}
  interface I extends ReturnType<steps_file>, WithTranslation<Methods> {}
  namespace Translation {
    interface Actions {}
  }
}
