const {Builder, By, Key, until} = require('selenium-webdriver'); 
const firefox = require('selenium-webdriver/firefox'); 
const { get } = require('selenium-webdriver/http');
const { Type } = require('selenium-webdriver/lib/logging');

const Crawl = function(){};

Crawl.Login = async function(id, pw){
  var user_id = id
  var user_pw = pw
  let driver = await new Builder() 
  .forBrowser('firefox')
  .setFirefoxOptions( new firefox.Options()
  .headless()
  .windowSize({ width: 640, height: 480 })
  .setPreference("general.useragent.override", "custom-user-agent") 
  ).build();
  try{
    // 로그인
    await driver.get('https://cyber.anyang.ac.kr/Main.do?cmd=viewHome&userDTO.localeKey=ko');
    await (driver.findElement(By.xpath('/html/body/div[4]/div[1]/button'))).click();
    // await driver.wait(until.elementLocated(By.xpath('//*[@id="id"]')));
    // 아이디 비밀번호 입력
    await driver.findElement(By.id('id')).sendKeys(user_id);
    await driver.findElement(By.id('pw')).sendKeys(user_pw);

      // 로그인 불가능시 => 서버 오류로인한
    await driver.findElement(By.linkText('로그인')).sendKeys(Key.ENTER);
    console.log('로그인 중')
    await driver.get('https://cyber.anyang.ac.kr/Main.do?cmd=viewHome&userDTO.localeKey=ko');
    await driver.navigate().refresh();
    await driver.quit();
    console.log('로그인 성공');
    return '200';
  }
  catch{
      //로그인 오류
      await driver.close();
      console.log('로그인 실패')
      return '400';
  }
}

Crawl.getCourseList = async function(id, pw){
  let driver = await new Builder() 
  .forBrowser('firefox')
  .setFirefoxOptions( new firefox.Options()
  .headless()
  .windowSize({ width: 640, height: 480 })
  .setPreference("general.useragent.override", "custom-user-agent") 
  ).build();
  try{
    // 로그인
    await driver.get('https://cyber.anyang.ac.kr/Main.do?cmd=viewHome&userDTO.localeKey=ko');
    await (await driver.findElement(By.xpath('/html/body/div[4]/div[1]/button'))).click();
    // await driver.wait(until.elementLocated(By.xpath('//*[@id="id"]')));
    // 아이디 비밀번호 입력
    await driver.findElement(By.id('id')).sendKeys(id);
    await driver.findElement(By.id('pw')).sendKeys(pw);

    await driver.findElement(By.linkText('로그인')).sendKeys(Key.ENTER);
    await driver.get('https://cyber.anyang.ac.kr/Main.do?cmd=viewHome&userDTO.localeKey=ko');
    await driver.navigate().refresh()

    var courseList = await (await driver.findElement(By.tagName('select'))).findElements(By.tagName('option'));
    console.log('강의 목록 불러오는 중');
    for(let i=1; i<courseList.length; i++) {
      var course = await (await courseList[i].getAttribute('value')).split(',');
      var courseId = await course[0];
      var courseChef = await course[1];
      var courseName = await courseList[i].getAttribute('text')
        console.log(courseName, courseId, courseChef);
        }
    }
  catch{
    //로그인 오류
    driver.close();
    return '400';
  }
}
module.exports = Crawl;