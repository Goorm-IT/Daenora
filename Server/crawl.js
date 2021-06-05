const {Builder, By, Key, until} = require('selenium-webdriver'); 
const firefox = require('selenium-webdriver/firefox');

const Crawl = function(){
  this.init = async function() {
    console.log('building web driver...');
    this.driver = await new Builder()
    .forBrowser('firefox')
    .setFirefoxOptions(
      new firefox.Options()
      .headless()
      .windowSize({ width: 640, height: 480 })
      .setPreference("general.useragent.override", "custom-user-agent") 
    ).build();
    console.log('building web driver complete...');
  }

  this.login = async function(id, pw) {
    try {
      if(this.driver == undefined) throw 'please Crawl.init first';
      console.log('홈페이지 여는중');
      await this.driver.get('https://cyber.anyang.ac.kr/Main.do?cmd=viewHome&userDTO.localeKey=ko');
      await (this.driver.findElement(By.xpath('/html/body/div[4]/div[1]/button'))).click();
      
      // 아이디 비밀번호 입력
      console.log('로그인 중');
      await this.driver.findElement(By.id('id')).sendKeys(id);
      await this.driver.findElement(By.id('pw')).sendKeys(pw);
  
        // 로그인 불가능시 => 서버 오류로인한
      await this.driver.findElement(By.linkText('로그인')).sendKeys(Key.ENTER);
      //await this.driver.get('https://cyber.anyang.ac.kr/Main.do?cmd=viewHome&userDTO.localeKey=ko');
      await this.driver.navigate().refresh();
      // 로그인 검증
      await this.driver.findElement(By.xpath('/html/body/div[3]/div/div[1]/div[2]/div[1]/form/fieldset/div[2]/span'));
      
      console.log('로그인 성공');
      return '200';
    }
    catch(e) {
        //로그인 오류
        console.log(e);
        console.log('로그인 실패');
        return '400';
    }
  }

  this.getCourseList = async function() {
    let courses = [];
    try{
      if(this.driver == undefined) throw 'please Crawl.init first';

      console.log('강의 목록 불러오는 중');
      let courseList = await (await this.driver.findElement(By.tagName('select'))).findElements(By.tagName('option'));
      for(let i=1; i<courseList.length; i++) {
        let course = await (await courseList[i].getAttribute('value')).split(',');
        courses.push({
          'classId': course[0],
          'className': await courseList[i].getAttribute('text'),
          'profName':course[1]
        });
      }
      console.log('강의 목록 로드 완료');
      return courses;
    }
    catch (e){
      //로그인 오류
      console.log(e);
      return '400';
    }
  }

  this.close = async function() {
    try {
      if(this.driver == undefined) throw 'driver is already closed';
      await this.driver.quit();
    }
    catch (e) {
      console.log(e);
    }
    finally {
      this.driver = undefined;
    }
  }
};


module.exports = Crawl;