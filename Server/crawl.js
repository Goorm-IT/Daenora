const {Builder, By, Key, until} = require('selenium-webdriver'); 
const firefox = require('selenium-webdriver/firefox'); 
async function example() { 
  let driver = await new Builder() 
  .forBrowser('firefox').build(); 
  try { 
    // ... your code 
    await driver.get('https://cyber.anyang.ac.kr/');
    await driver.executeScript("$('#button\\.buchung\\.continue')[0].click()")
    await driver.switchTo().frame('main');
    await driver.findElement(By.id('id')).sendKeys('201663035');
    await driver.findElement(By.id('pw')).sendKeys("Wjdtls753!", Key.ENTER);

  } 

  finally{ 
    driver.quit(); 
  } 
}
example();