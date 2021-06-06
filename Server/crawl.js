const {Builder, By, Key, until} = require('selenium-webdriver'); 
const firefox = require('selenium-webdriver/firefox');

const CrawlWeb = {
  driver : undefined,
  open : async function() {
    try{
      console.log('building webdriver...');
      this.driver = await new Builder()
      .forBrowser('firefox')
      .setFirefoxOptions(
        new firefox.Options()
        .headless()
        .windowSize({ width: 640, height: 480 })
        .setPreference("general.useragent.override", "custom-user-agent") 
      ).build();
      console.log('build webdriver complete...');
    }
    catch (e){
      console.log('fail to build webdriver...');
      console.log(e);
    }
  },
  close : async function() {
    try {
      if(this.driver == undefined) throw 'driver is already closed';
      await this.driver.quit();
      console.log('close webdriver complete');
    }
    catch (e) {
      console.log(e);
    }
    this.driver = undefined;
  },
  login : async function(id, pw) {
    try {
      if(this.driver == undefined) throw 'please open the driver first';

      console.log('홈페이지 여는중');
      await this.driver.get('https://cyber.anyang.ac.kr/Main.do?cmd=viewHome&userDTO.localeKey=ko');

      try { // 이미 로그인 되어 있을 경우 로그아웃
        await this.driver.findElement(By.className('logoutBtn')).click();
        console.log('로그아웃 성공');
      }
      catch {}
      try { // 팝업 창 닫기
        await (this.driver.findElement(By.xpath('/html/body/div[4]/div[1]/button'))).click();
      }
      catch {}
      
      // 로그인
      console.log(`'${id}'님의 로그인 시도 중`);
      await this.driver.findElement(By.id('id')).sendKeys(id);
      await this.driver.findElement(By.id('pw')).sendKeys(pw, Key.ENTER);
      await this.driver.navigate().refresh();
      //await this.driver.findElement(By.className('loginBtn'));
      console.log('로그인 성공');
      return '200';
    }
    catch(e) {
        //로그인 오류
        console.log(e);
        console.log('로그인 실패');
        throw '로그인 실패';
    }
  },
  getCourses : async function(courseId) {
    let courses = [];
    try{
      if(this.driver == undefined) throw 'please open the driver first';
      console.log('과제 목록 불러오는 중');
      let courseList = await (await this.driver.findElement(By.tagName('select'))).findElements(By.tagName('option'));
      for(let i=1; i<courseList.length; i++) {
        let course = (await courseList[i].getAttribute('value')).split(',');
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
      console.log(e);
      throw '400';
    }
  },
  getAssignments : async function(courseId) {
    try{
      if(this.driver == undefined) throw 'please open the driver first';
      console.log('강의 목록 불러오는 중');
      await this.driver.get(`https://cyber.anyang.ac.kr/Learner.do?cmd=viewLearnerStatusList&courseDTO.courseId=${courseId}&mainDTO.parentMenuId=menu_00101&mainDTO.menuId=menu_00100`);

      let assignTable = await this.driver.findElement(By.className('boardListBasic'));
      let assignTbody = await assignTable.findElement(By.tagName('tbody'));
      let assignElements = await assignTbody.findElements(By.tagName('tr'));
      let assignments = [];
      for(let i=0; i<assignElements.length; i++) {
        let assign = await assignElements[i].findElements(By.tagName('td'));
        let date = await assign[2].getText();
        date = date.split(' ~ ')
        let data = {
          index : await assign[0].getText(),
          assignmentName : await assign[1].getText(),
          startDate : date[0],
          endDate : date[1],
          submission : await assign[3].getText()
        }
        
        assignments.push(data);
        // courses.push({
        //   'classId': course[0],
        //   'className': await assignElements[i].getAttribute('text'),
        //   'profName':course[1]
        // });
      }
      console.log('강의 목록 로드 완료');
      return assignments;
    }
    catch (e){
      console.log(e);
      throw '400';
    }
  }
};


module.exports = CrawlWeb;