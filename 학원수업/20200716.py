

20200716

# 생성자 (constructor)

    객체에 초기값을 설정해야 할 필요가 있을 때 사용
    객체가 생성될 때 자동으로 호출되는 메서드

    __init__(initialize) 사용

    스페셜 메서드 (또는 매직 메서드) : 파이썬에서 자동으로 호출해주는
                                       앞뒤로 __가 붙은 메서드

    <형식>
    class 클래스이름:
        def __init__(self):   # 생성자
            self.속성 = 값

ex)
class Car:
    def __init__(self, value1, value2):  # 생성자
        self.color = value1
        self.speed = value2

myCar = Car('빨강', 0)
broCar = Car('파랑', 30)

print(f'내차의 색상은 {myCar.color}이며, 현재 속도는 {myCar.speed}km입니다.')
print(f'동생차의 색상은 {broCar.color}이며, 현재 속도는 {broCar.speed}km입니다.')

[출력결과]
내차의 색상은 빨강이며, 현재 속도는 0km입니다.
동생차의 색상은 파랑이며, 현재 속도는 30km입니다.


ex) 위의 예제 수정
class Car:
    def __init__(self, color, speed):  # 생성자
        self.color = color # 보통은 매개변수 이름과 속성 이름을 같게 한다.
        self.speed = speed

myCar = Car('빨강', 0)
broCar = Car('파랑', 30)

print(f'내차의 색상은 {myCar.color}이며, 현재 속도는 {myCar.speed}km입니다.')
print(f'동생차의 색상은 {broCar.color}이며, 현재 속도는 {broCar.speed}km입니다.')


class Car:
    def __init__(self, name, speed): # 생성자 --> 초기값설정
        self.name=name               
        self.speed=speed

    def getName(self):          #매개변수가 없더라도 self를 써주어야함/ 이름 메서드를 만들고 자동차 이름을 반환
        return self.name
    def getSpeed(self):         # 속도 메서드를 만들고 현재 속도를 반환
        return self.speed

    
myCar = Car('붕붕카',0)

broCar = Car('빵빵카',30)

sisCar = Car('띠띠카',60)


print(f'{myCar.getName()}의 현재 속도는 {myCar.getSpeed()}km입니다.')
print(f'{broCar.getName()}의 현재 속도는 {broCar.getSpeed()}km입니다.')
print(f'{sisCar.getName()}의 현재 속도는 {sisCar.getSpeed()}km입니다.')


# 클래스 변수

 클래스 안에 공간이 할당된 변수
 여러 인스턴스가 클래스 변수 공간을 함께 사용

 
class Car:
    count = 0           # 클래스 변수 선언
    def __init__(self,name,speed): # 생성자
        self.name=name  # 인스턴스 변수
        self.speed=speed
        Car.count+=1    # 클래스 변수 count에 1씩증

    def getName(self):
        return self.name
    def getSpeed(self):
        return self.speed

    
myCar = Car('붕붕카',0)
print(f'{myCar.getName()}의 속도는 {myCar.getSpeed()}km이고, 생성된 자동차의 총 {Car.count}대')

broCar = Car('빵빵카',30)
print(f'{broCar.getName()}의 속도는 {broCar.getSpeed()}km이고, 생성된 자동차의 총 {Car.count}대')

sisCar = Car('띠띠카',60)
print(f'{sisCar.getName()}의 속도는 {sisCar.getSpeed()}km이고, 생성된 자동차의 총 {Car.count}대')


# 클래스의 상속

 어떤 클래스를 만들때 다른 클래스의 기능을 물려 받을수 있게 만든것

 <형식>
 class 클래스이름(상속할 클래스 이름):
 class 서브클래스(슈퍼클래스):
 class 자식클래스(부모클래스):

 
class Car:   #부모클래스
    def __init__(self): #생성자
        self.speed=0    #초기화
        
    def upSpeed(self,value):
        self.speed+=value
        print(f'현재속도(부모클래스): {self.speed}')

class Sedan(Car): #Sedan클래스는 Car클래스를 상속받음. 상속받은 자식 클래스
    pass

class Truck(Car): #Truck클래스는 Car클래스를 상속받음. 상속받은 자식 클래스
    pass

car1 = Sedan()
car2 = Truck()

print('승용차 ->',end=' ')
car1.upSpeed(200) #승용차 -> 현재속도(부모클래스): 200

print('트럭 ->',end=' ')
car2.upSpeed(200) #트럭 -> 현재속도(부모클래스): 200



# 메서드 오버라이딩(재정의)

 부모 클래스(상속한 클래스)에 있는 메서드를 동일한 이름으로 다시 만드는 것
 부모 클래스의 메서드 대신 오버라이딩(덮어쓰기)한 메서드가 호출 된다.
 프로그램에서 어떤 기능이 같은 메서드 이름으로 계속 사용되어야 할때 주로 사용

 class Car:   #부모클래스
    def __init__(self): #생성자
        self.speed=0    #초기화
        
    def upSpeed(self,value):
        self.speed+=value
        print(f'현재속도(부모클래스): {self.speed}')

class Sedan(Car): #Sedan클래스는 Car클래스를 상속받음. 상속받은 자식 클래스
    def upSpeed(self,value): #메소드 오버라이딩
        self.speed+=value
        if self.speed>150:   # 만약 속도가 150이 넘어가면
            self.speed=150   # 150으로 변경
        print(f'현재속도(자식클래스): {self.speed}')    

class Truck(Car): #Truck클래스는 Car클래스를 상속받음. 상속받은 자식 클래스
    pass

class Taxi(Sedan): #Sedan클래스를 상속받음
    pass

class PoliceCar(Sedan):
    def upSpeed(self,value):
        self.speed+=value
        if self.speed>100:
            self.speed=100
        print(f'현재속도(승용차의 자식클래스): {self.speed}')    

car1 = Sedan()
car2 = Truck()
car3= Taxi()
car4=PoliceCar()

print('승용차 ->',end=' ')
car1.upSpeed(200) #승용차 -> 현재속도(자식클래스): 150

print('트럭 ->',end=' ')
car2.upSpeed(200) #트럭 -> 현재속도(부모클래스): 200

print('택시 ->',end=' ')
car3.upSpeed(200) #택시 -> 현재속도(자식클래스): 150

print('경찰차 ->',end=' ')
car4.upSpeed(200) #경찰차 -> 현재속도(승용차의 자식클래스): 100
 

# super()

 자식 클래스에서 부모클래스의 내용을 사용하고 싶을경우 사용
 상속과 연관된 함수로 부모 클래스를 참조한다.
 자식클래스에서 메서드 이름을 가지고 부모 클래스의 메서드를 사용할수 있다.

class Car:
    def __init__(self):
        print("부모클래스")
        self.name="붕붕카"
        
class Sedan(Car):   #상속받은 자식 클래스
    def __init__(self): # 메서드 오버라이딩
        print("자식클래스")
        self.color = "빨강"
        super().__init__() #부모클래스의 init메서드 호출

car1=Car() #부모클래스
car2=Sedan() #자식클래스
             #부모클래스 / 슈퍼로 참조한것 때문에 출력이 됨   
print(f'이 차의 이름은 {car2.name}입니다.') #이 차의 이름은 붕붕카입니다.
print(f'이 차의 색상은 {car2.color}입니다.') #이 차의 색상은 빨강입니다.


print(car1.name) #붕붕카
print(car2.name) #붕붕카
print(car2.color) #빨
#print(car1.color) 출력이 안됨/ 부모에는 색상속성이 없기때문에



================================================

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

'''


