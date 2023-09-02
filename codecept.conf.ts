import {
  setHeadlessWhen,
  setCommonPlugins
} from '@codeceptjs/configure';
// turn on headless mode when running with HEADLESS=true environment variable
// export HEADLESS=true && npx codeceptjs run
setHeadlessWhen(process.env.HEADLESS);

// enable all common plugins https://github.com/codeceptjs/configure#setcommonplugins
setCommonPlugins();

export const config: CodeceptJS.MainConfig = {
  tests: './*_test.ts',
  output: './output',
  helpers: {
    Playwright: {
      browser: 'chromium',
      url: 'https://hotel.testplanisphere.dev/ja/index.html',
      show: false
    },
    GlobalHelper: {
      require: './src/helper/global_helper.ts',
    },
  },
  include: {
    I: './steps_file'
  },
  gherkin: {
    features: [
      './features/basic.feature'
    ],
    steps: [
      './step_definitions/action.ts',
      './step_definitions/login.ts',
      './step_definitions/mypage.ts',
      './step_definitions/plan.ts',
    ]
  },
  name: 'codeceptjs-hotel-planisphere'
}