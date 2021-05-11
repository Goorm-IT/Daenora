from selenium import webdriver
from bs4 import BeautifulSoup


# TODO 객체화 작업 해야함, 병렬화 해봄

class Parse:
    def __init__(self):
        # Headless Chrome option
        self.options = webdriver.ChromeOptions()
        self.options.add_argument('headless')
        self.options.add_argument('window-size=1920x1080')
        self.options.add_argument("disable-gpu")
        # 드라이버 설정
        self.driver = webdriver.Chrome('../../PycharmProjects/TIL/chromedriver.exe', chrome_options=self.options)
        self.homework_address = '&mainDTO.parentMenuId=menu_00101&mainDTO.menuId=menu_00100'

    def login(self, user_id, user_pw):
        self.driver.get('https://cyber.anyang.ac.kr/Main.do?cmd=viewHome#')

        # 창 숨기는 옵션 추가 아직 추가 안함
        self.options.add_argument("headless")

        # 팝업창 제거
        try:
            self.driver.find_element_by_xpath('/html/body/div[4]/div[1]/button').click()

        except:
            # 오류 뭔지 모름
            pass

        finally:
            # 아이디 비밀번호 입력
            self.driver.find_element_by_id("id").send_keys(user_id)
            self.driver.find_element_by_id("pw").send_keys(user_pw)

            # 로그인 버튼 클릭
            self.driver.find_element_by_xpath('//*[@id="loginForm"]/fieldset/p[2]/a').click()

    def classroom(self):

        # 강의 코드 추출
        self.driver.switch_to_frame('main')
        r = self.driver.page_source
        soup = BeautifulSoup(r, "html.parser")
        select = soup.select_one('#\# > fieldset > select')

        for i in select.find_all('option')[1:]:
            self.dict[i.get_text()] = i['value'].split(",")

        # print(self.dict)
        # menu_00031 사이버 강의실 배너 메뉴번호

        self.driver.get(
            'https://cyber.anyang.ac.kr/Learner.do?cmd=viewLearnerStatusList&courseDTO.courseId=20211AA10660130800200'
            + self.homework_address)

        # 수강내역페이지 접근 불가능
        # courseId를 알 수 있으면 쉬운 접근 가능

        # 행 개수 추출
        table = self.driver.find_element_by_class_name('boardListBasic')
        tbody = table.find_element_by_tag_name("tbody")
        rows_length = tbody.find_elements_by_tag_name("tr")

        # 행 추출
        for i in range(len(rows_length)):
            rows = tbody.find_elements_by_tag_name("tr")[i]
            body = rows.find_elements_by_tag_name("td")
            for index, value in enumerate(body):
                print(value.text)

        self.driver.close()


input_id = ''
input_pw = ''
test = Parse()
test.login(input_id, input_pw)
test.classroom()
