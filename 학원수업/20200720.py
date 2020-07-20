20200720

# Tkinter이용 계산기 만들기

from tkinter import *

window = Tk()

window.title('계산기!!') #창제목
 
top_row = Frame(window) # Frame : 다른 위젯들을 그룹핑하는데 사용 (계산결과가 나오는 화면)
top_row.grid(row=0,column=0) #가로 0번줄, 세로 0번줄. 맨위에 표시되는 의미

display = Entry(top_row, width=33, bg='light green') # Entry : 한줄의 텍스트를 입력받는다.
                        #버튼하나당 7픽셀*4 = 28. 빈공간 1픽셀 *5 = 33(width이유)
display.grid() # 위에 위치와 똑같이 배치

pad = Frame(window) #버튼
pad.grid(row=1,column=0) # 가로 1번줄, 세로0번줄에 표기(계산결과 화면 아래에 표시)

pad_list = ['7','8','9','+',    
            '4','5','6','-',
            '1','2','3','*',
            '0','C','=','/']


r = 0 #가로(행)카운터
c = 0 #세로(열)카운터

for i in pad_list:  # 반복적으로 숫자와 연산 버튼을 생성하기 위한 코드
    def cmd(x=i):   # 클릭하면 계산이 되도록 해주는 함수
        click(x)
    Button(pad, text=i, width = 7, command = cmd).grid(row=r,column=c)    
    c= c+1
    if c>3:         #세로c가 3보다 크면 다음줄(가로)에 나오도록
        c=0
        r=r+1



def click(key):
    if key == '=':
        try:
            result = str(eval(display.get()))[0:10] #0부터9까지 가져온다.
            #eval() : 계산(자동으로 숫자변환)/ str() : 계산결과를 문자형식으로
            #계산 결과를 맨 뒤에 = 와 함께 표시
            display.insert(END,'=' + result)
            
        except:         #예외처리
            display.insert(END, '-->에러!!')
            
    elif key == 'C':
        display.delete(0,END) #C버튼이 눌려지면 모든 내용이 사라짐
    else :
        display.insert(END,key) # 그외 다른 키를 눌렀을때 그대로 출력되도록

        
window.mainloop() #계속 창 대기 상태로 만들어 준다 (화면이 계속 떠 있도록)



# 모듈을 불러와서 사용하기

    <형식>
    import 모듈이름
    from 모듈이름 import 모듈함수
         -> 모듈 이름을 생략하고 함수만 쓰고 싶을때
    from 모듈이름 import *
        -> 모듈안에 모든 함수를 당겨 쓸때
        -> 모두의 의미를 가진 * 사용
        
# 함수를 담은 m.py파일을 저장시키고 사용

import m
print(m.add(1,2))
print(m.sub(1,2))


#
from m import * # m 모듈에 있는 모든 함수를 가져온다

x=int(input('x를 입력하세요:')) # 사용자로부터 변수 입력받는다
y=int(input('y를 입력하세요:'))

print('x =',x)
print('y =',y)

n1 = add(x, y) #m이라는 모듈안에 있는 add함수의 결과값을 n에 담는다
n2 = sub(x, y)
n3 = mul(x, y)
n4 = div(x, y)
n5 = mod(x, y)
n6 = power(x, y)

print('x + y =', n1)
print('x - y =', n2)
print('x * y =', n3)
print('x / y =', n4)
print('x % y =', n5)
print('x ** y =', n6)
print()
print('n1 + n2 =', add(n1, n2)) # 리턴한 결과값이 매개변수로도 들어갈수있다.
print('n3 - n4 =', sub(n3, n4))


# 행맨(hangman) 게임 (단어게임)
    컴퓨터가 생각하는 단어를 맞춰가는 게임
    사용자는 한번에 하나의 글자만 입력할수있으며
    맞으면 글자가 보이고 아니면 시도횟구만 하나 증가
    글자를 다 맞히면 이기는 게임

import random

answer = '' #추측할 글자가 담길 변수
turns = 10 # 도전횟수


f=open('words.txt','r') # 파일입출력
lines = f.readlines()   # 리스트 형식으로 읽어온다

word = random.choice(lines) # 랜덤으로 선택한것을 word변수에 담는다(정답이 담기는것)

while turns>0: # 도전횟수가 0보다 클때까지 반복
    failed = 0 #실패횟수
    for i in word: #글자가 복수이기때문에 range가 없음/ word 길이만큼 반복
        if i in answer: # 추측한 글자에 word[i]글자 있다면 
            print(i, end='') #글자를 출력
        else:
            print('_',end='')
            failed+=1   #실패횟수 1 증가
    if failed == 0: # 실패횟수가 0이면 사용자가 이기고 게임종료
        print('이겼습니다.')
        break
    print()
    guess = input('글자를 하나 입력하세요: ')#추측한 글자에 입력받은 글자를 누적시킨다.
    answer += guess  # 추측한 글자에 입력받은 글자를 누적시킨다.
    if guess not in word:  #정답에 사용자가 입력한 글자가 없다면
        turns -= 1 # 도전횟수를 1 줄인다
        print('틀렸습니다.')
        print(f'{turns}번 기회가 남았습니다.')
        if turns ==0: # 도전횟수가 0이라면 사용자가 게임에서 진것으로 하고 정답을 알려준다.
            print(f'당신이 졌습니다. 정답은 {word}입니다.')
            
f.close()           # 파일을 닫는다


# 아나콘다

    각종 라이브러리(패키지)들을 쉽게 설치하고 이용할수있는 파이썬 배포판
    되도록이면 기존 파이썬을 지우고 설치한다.(파이썬이 내장되어있기때문에)

# 파이썬으로 라이브러리 설치

    실행(window키 +r) -> cmd(명령프롬프트)
    pip install 설치할 라이브러리명
    
# 구글코랩

    구글 colaboratory서비스
    지메일 계정이있으면 무료로 제공
    별도의 파이썬 설치없이 웹브라우저에서 주피터노트북과 같은 작업을 할수있다.
    텐서플로, 케라서, 멧플롯핍, 사이킷런, 판다스 등 데이터 분석이나 인공지능에
    관련된 패키지가 미리 설치되어 있어 편리하다
    무료로 GPU 사용할수있다.
    
    
