# codeceptjs-hotel-planisphere

HOTEL PLANISPHERE を題材にした、CodeceptJS のサンプルです。

## CodeceptJS

https://codecept.io/

## HOTEL PLANISPHERE

https://hotel.testplanisphere.dev/ja/

## example

https://github.com/testplanisphere/hotel-example-webdriverio-ja/

## Setup

ref. https://codecept.io/quickstart/


```sh
# Install codeceptjs
$ npx create-codeceptjs .

# Initialize project
$ npx codeceptjs init

? Do you plan to write tests in TypeScript? Yes
? Where are your tests located? ./*_test.ts
? What helpers do you want to use? Playwright
? Where should logs, screenshots, and reports to be stored? ./output
? Do you want to enable localization for tests? http://bit.ly/3GNUBbh ja-JP
Configure helpers...
? [Playwright] Browser in which testing will be performed. Possible options: chromium, firefox, webkit or electron chrom
ium
? [Playwright] Base url of site to be tested https://hotel.testplanisphere.dev/ja/
? [Playwright] Show browser window Yes

? Feature which is being tested (ex: account, login, etc) login
? Filename of a test login.ts

$ npx codeceptjs gherkin:init

```

## Commands

```
$ npx codeceptjs run features/mypage.feature --debug
$ npx codeceptjs def
```

## Links

- [Commands](https://codecept.io/commands/#commands)
- [Playwright Helper](https://codecept.io/helpers/Playwright/)
- [Locators]https://codecept.io/locators/

## Config

```
  helpers: {
    Playwright: {
      show: true,
      restart: 'session',
      fullPageScreenshots: true,
      keepBrowserState: true
    },
  }
```

## Function

```
pause();
```