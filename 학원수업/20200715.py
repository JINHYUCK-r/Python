# 파일 입출력
'''
[문제]

새로운 텍스트 파일 Text.txt를 추가하고 1부터 10까지의 수가 입력되도록 저장하여라.


[파일 출력결과]
12345678910


[정답1]
f = open('Text.txt','w')
for i in range(1, 11):
    f.write(str(i))
f.close()


[정답2]
with open('Text.txt','w') as f:
    for i in range(1, 11):
        f.write(str(i))
        
'''



'''
[문제]

새로운 텍스트 파일 loop.txt를 생성하되, 파일열기모드를 추가모드로 한다. 
1부터 100까지 한 칸씩만 띄우고 모두 한 줄에 저장한다.


[파일 출력결과]
숫자 1 숫자 2 ..... 숫자 99 숫자 100 


[정답1]
f = open('loop.txt', 'a')
for i in range(1, 101):
    data = f'숫자 {i} '
    f.write(data)
f.close()


[정답2]
f = open('loop.txt', 'a')
a = 1
while a <= 100:
    data = '숫자 {} '.format(a)
    f.write(data)
    a = a + 1
f.close()


[정답3]
with open('loop.txt', 'a') as f:
    for i in range(1, 101):
        data = '숫자 {} '.format(i)
        f.write(data)

'''



'''
[문제]

practice.txt를 만들어 “제1의아해가무섭다고그리오.”부터 “제5의아해가무섭다고그리오.”까지 순서대로 한 줄에 하나씩 입력하여 저장하시오.
그리고 그 파일을 열어 파이썬화면에서 출력하시오


[화면 출력결과]

제1의아해가무섭다고그리오.

제2의아해가무섭다고그리오.

제3의아해가무섭다고그리오.

제4의아해가무섭다고그리오.

제5의아해가무섭다고그리오.



[정답1]
f = open('practice.txt','w')
for i in range(1, 6):
    data = '제{}의아해가무섭다고그리오.\n'.format(i)
    f.write(data)
f.close()

f = open('practice.txt','r')
lines = f.readlines()
for i in lines:
    print(i)
f.close()



[정답2]
with open('practice.txt', 'w') as f:
    for i in range(1, 6):
        data = '제{}의아해가무섭다고그리오.\n'.format(i)
        f.write(data)

with open('practice.txt', 'r') as f:
    lines = f.readlines()
    for i in lines:
        print(i)

'''

==========================================================

20200715

# 예외 처리 (try ~ except)

    때때로 오류를 무시하고 싶을 때 사용
    예외적으로 오류를 처리할 때 사용

    <형식>
    try:
        예외가 발생할 가능성이 있는 코드
    except:
        예외가 발생했을 때 실행할 코드

try:
    num = int(input("정수를 입력하세요: ")) #예외가 발생할 가능성이 있는 코드
    print("원의 반지름 : ",num)
    print("원의 둘레 : ", num*3.14*2)
    print("원의 넓이 : ",num*num*3.14)
except:
    print("무언가가 잘못되었습니다.") # 정수를 입력하지않으면 에러가 뜨지않고 이 메세지가 출력


# 예외처리( try ~ except ~ else)

 예외가 발생하지 않았을때 실행할 코드를 else 구문뒤에 지정.
 예외가 발생 가능성이 있는 코드만 try 구문 내부에 넣고 나머지는 모두 else 구문으로 빼는 경우가 많음

 <형식>
 try:
     예외가 발생할 가능성이 있는코드
 except:
     예외가 발생했을때 실행할 코드
 else:
     예외가 발생하지 않았을때 실행할 코드


try:
    num = int(input("정수를 입력하세요: ")) # 예외가 발생할 가능성이 있는 코드
    
except:
    print("무언가가 잘못되었습니다.")       # 예외가 발생했을때 실행할코드

else:                                       # 예외가 발생하지 않았을때 실행할 코드
    print("원의 반지름 : ",num)
    print("원의 둘레 : ", num*3.14*2)
    print("원의 넓이 : ",num*num*3.14)

    
# 예외처리(try~except, finally)

 finally 구문 : 예외처리 구문에서 가장 마지막에 사용할수있는 구문
                예외 발생 여부와 관계없이 무조건 실행할경우 사용
 try 구문은 단독으로는 사용할수 없으며, 반드시 except 구문 또는 finally 구문과 함께 사용해야함
 else 구문은 반드시 except 뒤에 사용해야함
 
 <형식>
 try:
     예외가 발생할 가능성이 있는코드
 except:
     예외가 발생했을때 실행할 코드
 else:
     예외가 발생하지 않았을때 실행할 코드
 finally:
     무조건 실행할 코드

try:
    num = int(input("정수를 입력하세요: ")) # 예외가 발생할 가능성이 있는 코드
    
except:
    print("무언가가 잘못되었습니다.")       # 예외가 발생했을때 실행할코드

else:                                       # 예외가 발생하지 않았을때 실행할 코드
    print("원의 반지름 : ",num)
    print("원의 둘레 : ", num*3.14*2)
    print("원의 넓이 : ",num*num*3.14)
    print("예외가 발생하지 않았습니다.")
finally:
    print("일단 프로그램이 어떻게든 끝났습니다.")   # 무조건 출력됨

    
# 예외처리 (try ~except,pass)

 예외 발생하면 바로 처리해야하지만 크게 중요한 부분이 아닐경우 프로그램의 강제 종료를 막는 목적으로
 pass 키워드를 사용한다.

 <형식>
 try:
     예외가 발생할 가능성이 있는코드
 except:
     pass

ex) 숫자만 걸러주는 코드

list_a = ['52','123','29','파이썬','111']
list_num = [] # 숫자만 담을 빈 리스트 생성

for i in list_a: # list_a 리스트에 있는 요소들을 하나씩 반복
    try:
        int(i) # 정수형인 숫자로 변환(예외발생가능성이 있는 코드)
        list_num.append(i) #예외(에러)없이 통과한 요소만 리스트(list_num)에 추가
    except:
        pass # 예외가 발생하면 그냥 넘어감

print(f'{list_a}내부에 있는 숫자는 {list_num}입니다.')




# 객체 지향 프로그램(Object - Oriented Programming, OOP)

 복잡한 무제를 작게 나누어 객체(object)를 만들고,
 객체를 조합해서 문제를 해결하는 방식
 복잡한 문제를 처리하는데 유용하며 기능을 개선하고 발전시킬때도
 해당 클래스만 수정하면 되믄로 유지보수에 효율적

 클래스(class) : 똑같은 무엇인가를 계속해서 만들어 낼수 있는 설계도
                 과자틀, 붕어빵틀에도 비유
 객체(object) : 붕어빵 틀에서 만들어낸 붕어빵에 비유
                각각의 객체마다 고유한 특성을 가진다.
                파이썬에서는 숫자, 문자, 리스트, 딕셔너리, 함수 등이 객체이다.
 메서드(method) : 클래스 안에서 구현된 함수
 인스턴스(instance) : 특정객체가 어떤 클래스의 객체인지 관계위주로 설명할때 사용
                      클래스와 연관지어서 객체를 말할때 객체라고 하지않고 인스턴스라고 한다.

 <형식>
 class 클래스이름:       #파이썬에서는 주로 클래스이름을 대문자로 시작
     def 메서드이름(self, 매개변수): #self : 메서드를 호출한 객체가 자동으로 전달되는 매개변수. 무조건적는다고 생각
         수행할코드

 인스턴스이름 = 클래스이름()
 인스턴스이름.메서드이름()

 
class Car: #Car라는 클래스 선언
    def upSpeed(self, value): # 증가할 속도량 매서드
        self.speed +=value
    def downSpeed(self,value):
        self.speed -=value

myCar = Car() # 내차라는 인스턴스 생성
myCar.color = "빨강" # 내차의 색상 속성을 빨강으로 지정
myCar.speed = 50 # 내차의 현재 속도의 속성을 0으로 지정

dadCar = Car()
dadCar.color = "파랑"
dadCar.speed = 0

momCar = Car()
momCar.color = "노랑"
momCar.speed = 30


myCar.upSpeed(30) #50+30 / upSpeed 메서드 호출
dadCar.upSpeed(60) #0+60
momCar.upSpeed(0) #30+0

print(f'내 차의 색상은 {myCar.color}이며, 현재 속도는 {myCar.speed}km입니다.') #빨강, 80
print(f'아빠 차의 색상은 {dadCar.color}이며, 현재 속도는 {dadCar.speed}km입니다.') #파랑, 60
print(f'엄마 차의 색상은 {momCar.color}이며, 현재 속도는 {momCar.speed}km입니다.') #노랑,30


myCar.downSpeed(20) #80-20
dadCar.downSpeed(0)  #60-0
momCar.downSpeed(30) #30-30

print(f'내 차의 색상은 {myCar.color}이며, 현재 속도는 {myCar.speed}km입니다.') #빨강, 60
print(f'아빠 차의 색상은 {dadCar.color}이며, 현재 속도는 {dadCar.speed}km입니다.') #파랑, 60
print(f'엄마 차의 색상은 {momCar.color}이며, 현재 속도는 {momCar.speed}km입니다.') #노랑, 0

 

# 생성자 (constructor)

 객체에 초기값을 설정해야 할 필요가 있을때 사용
 객체가 생성될때 자동으로 호출되는 메서드

 __init__(initialize)사용 :앞뒤로 언더바 두개가 붙은거

 스페셜메서드(또는 매직메서드): 파이썬에서 자동으로 호출해주는 앞뒤로 __가 붙는 매서드

 <형식>
 class 클래스이름:
     def __init__(self):  #생성자
         self.속성 = 값
         
class Car:
    def __init__(self):
        self.color = "빨강"
        self.speed = 0

myCar = Car()
broCar = Car()

print(f'내 차의 색상은 {myCar.color}이면, 현재 속도는 {myCar.speed}km입니다.') #빨강,0
print(f'동생 차의 색상은 {broCar.color}이면, 현재 속도는 {broCar.speed}km입니다.') #빨강,0


































        
