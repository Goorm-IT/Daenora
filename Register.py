from selenium import webdriver
from bs4 import BeautifulSoup

# TODO 회원가입 검증을 위한 경고창확인 테스트

class Register:
    def __init__(self):
        # Headless Chrome option
        self.options = webdriver.ChromeOptions()
        self.options.add_argument('headless')
        self.options.add_argument('window-size=1920x1080')
        self.options.add_argument("disable-gpu")
        # 드라이버 설정
        self.driver = webdriver.Chrome('../../PycharmProjects/TIL/chromedriver.exe')


    def verify(self, user_id, user_pw):
        self.driver.get('https://portal.anyang.ac.kr/')

        # 아이디 비밀번호 입력
        self.driver.find_element_by_id("login").send_keys(user_id)
        self.driver.find_element_by_id("password").send_keys(user_pw)
        self.driver.find_element_by_xpath('//*[@id="loginImg"]').click()




input_id = ''
input_pw = ''
test = Register()
test.verify(input_id, input_pw)
