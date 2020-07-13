# 매개변수(입력값)의 개수를 정확히 모를 때 : 가변매개변수(가변인자)

    <형식>
    def 함수이름(*매개변수명):   # 함수 정의
        수행할 코드

    함수이름(필요한 매개변수 개수만큼 입력) # 함수 호출

ex)
def add_many(*args):
    hap = 0             # 합계를 담을 변수 hap을 0으로 초기화한다.
    for i in args:      # 매개변수 개수만큼 반복해서 누적합계 구한다.
        hap = hap + i   # hap += i
    return hap          # 결과로 최종 hap을 반환해준다.

a = add_many(1, 2, 3)   # 매개변수가 3개인 경우
print(a)

b = add_many(1, 2, 3, 4, 5, 6) # 매개변수가 6개인 경우
print(b)

c = add_many(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) # 매개변수가 10개인 경우
print(c)

[출력결과]
6
21
55

ex)
def add_mul(choice, *args): # 일반매개변수와 가변매개변수가 같이 있는 형식
    if choice == 'add':     # choice 매개변수가 add라면
        answer = 0          # answer 초기값을 0으로 한다.
        for i in args:      # 가변매개변수 args의 개수만큼 반복
            answer = answer + i # answer += i
    elif choice == 'mul':   # choice 매개변수가 mul이라면
        answer = 1          # answer 초기값을 1로 준다
        for i in args:      # (0으로 하면 결과가 0이 되므로)
            answer = answer * i  # answer *= i
    return answer           # 결과가 담긴 answer을 반환한다.

a = add_mul('add', 1, 2, 3) # 가변매개변수 3개인 경우 함수 호출
print(a)                    # 리턴한 결과값이 담긴 a를 출력한다.

b = add_mul('mul', 1, 2, 3, 4) # 가변매개변수 4개인 경우 함수 호출
print(b)                    # 리턴한 결과값이 담긴 b를 출력한다.

[출력결과]
6
24


# 키워드 매개변수 사용하기

    각각의 매개변수가
    어떤 용도인지 알기 어려울 때 사용

ex)
def info(name, age, address):
    print('이름 :', name)
    print('나이 :', age)
    print('주소 :', address)
    print()

info('라이언', 20, '대구') # 일반적인 형식
info(name='어피치', age=30, address='서울') # 키워드로 지정(키워드 매개변수)
info(age=40, address='부산', name='무지') # 순서를 다르게 해도 된다(키워드 매개변수)

[출력결과]
이름 : 라이언
나이 : 20
주소 : 대구

이름 : 어피치
나이 : 30
주소 : 서울

이름 : 무지
나이 : 40
주소 : 부산


# 기본 매개변수(매개변수에 초깃값) 지정하기

    주로 사용하는 값이 있으면서
    가끔 다른 값을 사용해야 할 때 활용

    ex) print함수의 end의 경우 \n으로 지정되어 있어
        대부분 그대로 사용하고, 가끔 end에 다른 값을
        넣어 엔터기능을 다른 기능을 바꾸어서 사용

    <형식>
    def 함수이름(매개변수=값):
        실행할 코드

ex)
def info(name, age, address='비공개'):
    print('이름 :', name)
    print('나이 :', age)
    print('주소 :', address)
    print()

info('네오', 25)
info('프로도', 25, '제주도')

[출력결과]
이름 : 네오
나이 : 25
주소 : 비공개

이름 : 프로도
나이 : 25
주소 : 제주도


# for문과 리스트를 이용해서 홀수에만 2를 곱하여 저장하기

numbers = [1, 2, 3, 4, 5]
result = []  # 결과를 담을 빈 리스트를 만든다.

for n in numbers: # numbers리스트에 있는 값들을 하나씩 비교
    if n % 2 == 1: # 2로 나눈 나머지가 1이면 홀수이므로
        result.append(n * 2) # append함수를 써서 result리스트에 결과값을
                             # 하나씩 추가
print('결과 :', result)

[출력결과]
결과 : [2, 6, 10]


# for문과 리스트를 이용한 평균 점수 구하기

score = [70, 60, 55, 75, 95, 90, 80, 80, 85, 100, 10, 30] # 학생들 점수가 담긴 score리스트
total = 0 # 총점을 0으로 초기화

for i in score:  # i는 score[i]를 뜻함
    total = total + i  # total += i. 70+60+55....10+30

print('총점 :', total)

average = total // len(score) # 평균은 score리스트의 개수(len함수)로 나누어서 구함. 몫만
print('평균 :', average)

[출력결과]
총점 : 830
평균 : 69


# 터틀 그래픽스 모듈과 함수, 리스트를 이용한 막대 그래프 그리기

import turtle as t

t.color('blue')     # 펜(선) 색을 파랑으로
t.fillcolor('red')  # 면 색을 빨강으로
t.shape('turtle')
t.pensize(3)        # 선 굵기를 3으로
t.penup()           # 펜을 들어 그림이 그려지지 않게 한다.
t.goto(-150, -100)  # x축 -150, y축 -100으로 이동
t.pendown()         # 펜을 내려 그림이 그려지게 한다.

def drawBar(height): # height라는 매개변수를 가진 함수 정의
    t.begin_fill()   # 색 채우기 시작
    t.lt(90)         # 왼쪽으로 90도 회전
    t.fd(height)     # 앞으로 height만큼 움직여라.
    t.write(str(height)) # write함수는 문자형식만 올 수 있다.
    t.rt(90)

    t.fd(40)
    t.rt(90)
    t.fd(height)
    t.lt(90)
    t.end_fill()     # 색 채우기 끝

data = [120, 56, 309, 220, 156, 23, 98, 100, 30] # 막대그래프의 높이

for d in data: # 높이 리스트 요소 개수만큼 반복
    drawBar(d) # 함수 호출

