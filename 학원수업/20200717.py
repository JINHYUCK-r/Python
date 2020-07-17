# 클래스
'''
[문제]

TV를 클래스로 정의하자.

변수(속성) : 채널(channel), 볼륨(volume), 전원상태(on)
함수(메서드) : turnOn() --> TV를 켠다.
              turnOff() --> TV를 끈다.
              setChannel(channel) --> 채널을 변경한다.
              setVolume(volume) --> 볼륨을 변경한다.


[출력결과]

TV 전원 : True
TV 볼륨 : 10
TV 채널 : 2
TV 전원 : False


[정답] 다양하게 풀 수 있으니 정답은 참고만 하시오.

class TV:
    def __init__(self):
        self.channel = 0
        self.volume = 0
        self.on = False

    def turnOn(self):
        self.on = True
        print(f'TV 전원 : {self.on}')

    def turnOff(self):
        self.on = False
        print(f'TV 전원 : {self.on}')

    def setVolume(self, volume):
        self.volume = volume
        print(f'TV 볼륨 : {self.volume}')

    def setChannel(self, channel):
        self.channel = channel
        print(f'TV 채널 : {self.channel}')

tv = TV()
tv.turnOn()
tv.setVolume(10)
tv.setChannel(2)
tv.turnOff()
    
'''



'''
[문제]

Animal이라는 클래스를 만들자.

변수(속성) : name
함수(메서드) : speak()

Dog, Duck라는 클래스를 만들자.
이 클래스는 Animal 클래스를 상속받는다.


[출력결과]

동물들의 울음소리에 대해 알아봅시다!
강아지는 멍멍
오리는 꽥꽥


[정답] 다양하게 풀 수 있으니 정답은 참고만 하시오.

class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(f'{self.name}들의 울음소리에 대해 알아봅시다!')

class Dog(Animal):
    def speak(self):
        print(f'{self.name}는 멍멍')

class Duck(Animal):
    def speak(self):
        print(f'{self.name}는 꽥꽥')

a = Animal('동물')
b = Dog('강아지')
c = Duck('오리')

a.speak()
b.speak()
c.speak()

'''
====================================================

20200717

# 사칙연산 클래스 예제

class Cal:
    def __init__(self, num1, num2):
        self.num1 = num1
        self.num2 = num2

    def add(self):
        return self.num1 + self.num2

    def sub(self):
        return self.num1 - self.num2

    def mul(self):
        return self.num1 * self.num2

    def div(self):
        return self.num1 / self.num2

a = Cal(4, 2)
print(f'{a.num1} + {a.num2} = {a.add()}')
print(f'{a.num1} - {a.num2} = {a.sub()}')
print(f'{a.num1} * {a.num2} = {a.mul()}')
print(f'{a.num1} / {a.num2} = {a.div()}')


class Safe(Cal):  # 상속받은 클래스
    def div(self): # 메서드 오버라이딩(덮어쓰기)
        if self.num2 == 0:  # 0으로는 나눌 수 없으므로
            return '0으로 나눌 수 없습니다!'
        else:
            return self.num1 / self.num2  # 정상적이면 그냥 계산

b = Safe(4, 0)
print(f'{b.num1} + {b.num2} = {b.add()}')
print(f'{b.num1} - {b.num2} = {b.sub()}')
print(f'{b.num1} * {b.num2} = {b.mul()}')
print(f'{b.num1} / {b.num2} = {b.div()}')

[출력결과]
4 + 2 = 6
4 - 2 = 2
4 * 2 = 8
4 / 2 = 2.0
4 + 0 = 4
4 - 0 = 4
4 * 0 = 0
4 / 0 = 0으로 나눌 수 없습니다!


# 클래스와 터틀 라이브러리를 이용해서 거북이 두마리 움직이기

import turtle as t

t1 = t.Turtle()
t2 = t.Turtle()


# t1 거북이의 움직임
def t1_up():
    t1.setheading(90) #거북이 머리를 북쪽(90)으로(남쪽:270,동쪽:0,서쪽180)
    t1.fd(10)

def t1_down():
    t1.setheading(270)
    t1.fd(10)

def t1_left():
    t1.seth(180) #setheading랑 같은표현
    t1.fd(10)

def t1_right():
    t1.seth(0)
    t1.fd(10)

# t2거북이의 움직임    
def t2_up():
    t2.setheading(90)
    t2.fd(10)

def t2_down():
    t2.setheading(270)
    t2.fd(10)

def t2_left():
    t2.seth(180) 
    t2.fd(10)

def t2_right():
    t2.seth(0)
    t2.fd(10)

t1.shape('turtle')
t2.shape('turtle')
t1.color('green')
t2.color('red')

t.onkeypress(t1_up,'Up')  #키보드의 위쪽화살표를 누르면 t1_up함수가 호출됨
t.onkeypress(t1_down,'Down')
t.onkeypress(t1_left,'Left')
t.onkeypress(t1_right,'Right')


t.onkeypress(t2_up,'w')  #키보드의 w를 누르면 t2_up함수가 호출됨
t.onkeypress(t2_down,'s')
t.onkeypress(t2_left,'a')
t.onkeypress(t2_right,'d')

t.listen()   # 키입력모드, 키에 대해 반응하려면 꼭 넣어줘야함. 보통 코드 끝부분에 위치
t.mainloop() # 코드가 끝난 후 거북이 창이 바로 종료될 경우를 대비해서 마지막에 이 코드 추가
             # 화면이 멈춰있도록하는거 요새는 없어도 잘 돌아가긴하지만 적어주는게 좋음



# Tkinter 라이브러리를 이용한 윈도 프로그래밍


 Tkinter 라이브러리 : Tk interface의 약어
 그래픽 기반(GUI)의 프로그램을 만들기 위한 도구

 위젯(widget) : 사용자 인터페이스를 작성하기 위하여 tkinter에서 제공하는 조그마한 도구들
                

from tkinter import *

def process():
    print('클릭했습니다.')
    
window = Tk() #Tk클래스를 window에 담음
button = Button(window,text='클릭하세요!', command=process) #command: 명령을 내리는것. 여기서 process는 위의 함수
button.pack() #만든것을 화면에 표시

window.mainloop()


from tkinter import *
from tkinter import messagebox #메시지 창에 관한 함수를 불러온다.

def click(): #메시지 창 내용이 보여지도록 해주는 click 이라는 함수 생성
    messagebox.showinfo('파이썬 공부 종료!','수고하셨습니다.') # 앞에는 창제목, 뒤에는 메세지 부분
    window.quit() #위젯종료(종료하기위해 입력)
    window.destroy() #위젯파괴(메모리까지 완전 삭제)


window = Tk()
window.title('창 제목!!') # 창제목
window.geometry('600x700') #윈도 창 초기크기 설정. 영어 x를 적어야 인식함, 가로 * 세로 창크기

label = Label(window, text='파이썬', font=('궁서체',30), fg='blue') #화면에 글씨를 보여줌
label.pack() # 해당 레이블을 화면에 표시

label2 = Label(window, text='잼있어!', font=('맑은 고딕',20), fg='red')
label2.pack()

photo = PhotoImage(file='라이언.png') #gif,png파일 웹용 이미지파일 넣을것 jpg안됨
label3 = Label(window,image=photo)
label3.pack()

button = Button(window, text='닫아주시오', command=click)
button.pack()

window.mainloop()






