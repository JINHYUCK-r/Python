# 조건문 (if)
'''
[문제]
변수 a에 숫자 12를 담은 후
a가 10보다 크면 '10보다 크다.',
10보다 작거나 같으면 '10보다 작거나 같다.'
라고 출력해 보시오.

[출력결과]
10보다 크다.

[정답]
a = 12
if a > 10:
    print('10보다 크다.')
else:
    print('10보다 작거나 같다.')

'''



'''
[문제]
변수 n에 input 함수를 이용해서 숫자를 입력 받은 후
입력 받은 수가 10보다 크면 '10보다 크다.',
10보다 작으면 '10보다 작다.',
10과 같으면 '10과 같다.'
라고 출력해 보시오.

[출력결과]
숫자를 입력하세요 : 9
10보다 작다.

[정답]
n = int(input('숫자를 입력하세요 : '))
if n > 10:
    print('10보다 크다.')
elif n < 10:
    print('10보다 작다.')
else:
    print('10보다 같다.')

'''
    


'''
[문제] 15세 이상 영화등급 구분
변수 age에 나이를 입력받는다.
15세 이상이면 영화를 볼 수 있고, 아니면 영화를 볼 수 없다는 코드를 작성하시오.

[출력결과]
당신의 나이는?  17
이 등급의 영화를 볼 수 있습니다. 

[결과]
age = int(input('당신의 나이는? '))
if age >= 15:
    print('이 등급의 영화를 볼 수 있습니다.')
else:
    print('이 등급의 영화를 볼 수 없습니다.')

'''



'''
[문제] 
변수 name에 이름을 입력받은 후
입력 받은 이름이 '라이언'일 경우 '3학년 1반으로 가시오.'가 출력.
입력 받은 이름이 '어피치'일 경우 '3학년 2반으로 가시오.'가 출력.
그 외의 경우 '학생 이름을 잘못 입력하셨습니다.'가 출력되도록 하시오.

[출력결과1]
학생 이름을 입력하세요 : 어피치
3학년 2반으로 가시오.

[출력결과2]
학생 이름을 입력하세요 : 라이언
3학년 1반으로 가시오.

[출력결과3]
학생 이름을 입력하세요 : 홍길동
학생 이름을 잘못 입력하셨습니다.

[정답]
name = input('학생 이름을 입력하세요 : ')
if name == '라이언':
    print('3학년 1반으로 가시오.')
elif name == '어피치':
    print('3학년 2반으로 가시오.')
else:
    print('학생 이름을 잘못 입력하셨습니다.')
    
'''

==============================================

20200709


# 반복문 (while)

 조건문을 확인하여 참인 동안 계속 반복하여 수행

 <형식 : 반복횟수가 정해진 경우>
 변수 = 시작값
 while 변수값<끝값:
     이부분을 반복
     변수 = 변수  + 증가값

 <형식 : 조건문으로 판단하는 경우>
 while 조건문:
     이 이부분을 반복
     

ex)
i=0     #시작값,초기식
while i<100:        #while 조건식
    print("Hello world!",i) #참일 경우 반복할 코드 #들여쓰기 필수
    i = i+1                 #변화식, i+=1 이랑 같음

ex)
while True: # True 쓸때는 꼭 대문자로/ True 대신 1을 적어도 된다.
    print("ㅋ",end='') #end='' 엔터기능 없애기 #무한반복은 ctrl+c로 종료가능(idle만해당)


--
#break

 반복문에서 제어 흐름을 중단하고 빠져나온다.
 (반복문을 끝냄)
 

ex) 0부터 99까지 출력하는 예제

i=0
while True: #무한루프
    print(i,end=' ')    #i 출력. 엔터기능을 스페이스로 대체
    i=i+1               # i+=1
    if i==100:          # i가 100이 되면
        break           # 반복문을 빠져나온다 (제어흐름 종료)
 
--

# continue  구문

  while문 수행시 조전에 맞지않으면 while문을 빠져나오고 반복문을 종료하는데
  이때 while문 전체를 빠져나가지 않고, while문 맨 처음 조건문으로 다시 돌아가고 싶은 경우사용

  break와 다르게 제어흐름을 유지
  코드 실행만 건너뜀


ex)홀수 출력
a=0 
while a<10:
    a=a+1   #a+=1
    if a%2==0:  #a를 2로 나누었을때 나머지가 0이면 
        continue #while문 맨처음(조건문)으로 돌아간다
    print(a)

--

# while문 관련 예제

ex) 숫자로 데미지를 입힌 후 체력이 0이 되면 종료

hp=100
while hp>0:
    print(f'주인공의 체력은 {hp}입니다.')
    damage=int(input("얼마의 데미지를 입힐까요?"))
    hp=hp-damage #hp-=damage

print("주인공의 체력이 0이되어 종료합니다.") #반복문이 모두 끝나고 출력


ex) 커피 자판기 프로그램

coffee = 5
while True:
    money = int(input("돈을 넣어주세요 : "))
    if money ==300:
        print("커피를 줍니다.")
        coffee=coffee-1 # coffee-=1
        print(f'남은 커피의 양은 {coffee}개 입니다.')
    elif money>300:
        print(f"거스름돈 {money-300}원을 주고 커피를 줍니다.")
        coffee=coffee-1
        print(f'남은 커피의 양은 {coffee}개 입니다.')
    else:
        print("돈을 다시 돌려주고 커피를 주지 않습니다.")
        print(f'남은 커피의 양은 {coffee}개 입니다.')

    if coffee==0: #또 다른 조건. 커피의 개수가 0개이면
        print("커피가 다떨어 졌습니다. 판매를 중지합니다.")
        break; #반복문을 빠져나옴
--

# 반복문 (for)

 반복 횟수가 정해져 있을때 사용

 <형식>
 for 변수 in range(횟수):   #시작값을 쓰지않으면 0부터 시작함
     반복할 코드

 for 변수 in range(시작값,끝값+1): #증가폭을 생략하면 1씩 증가함
     반복할 코드
     
 for 변수 in range(시작값, 끝값+1, 증가폭):
     반복할 코드
     
 for _ in range(횟수):    #변수를 생략할수도 있음
     반복할 코드

 for 변수 in 리스트명: #리스트 전체가 올때는 range 붙이지 않는다.
     반복할 코드

ex)

for i in range(10): # 10번 반복, 초기변수 i는 0
    print(f'{i}번째 문장입니다.') #0~9까지 출력 /10개
    
print()

for i in range(1,11):   #시작값은 1, 끝값은 10, 증가값은 1
    print(f'{i}번째 문장입니다.') #1~10까지 출력

print()

for i in range(1,11,2): #시작값은 1, 끝값은 10, 증가값은 2
    print(f'{i}번째 문장입니다.') #1,3,5,7,9 출력

print()

for i in range(10,0,-1):    #시작값은 10, 끝값은 1, 증가값은 -1
    print(f'{i}번째 문장입니다.') #10~1까지 출력

print()    

for i in reversed(range(10)):#reversed : 반전(반대로_)
    print(f'{i}번째 문장입니다.') #9~0까지 출력


ex) 반복할 횟수를 입력받아 반복하기
count = int(input("반복할 횟수를 입력하세요 : "))
                  
for i in range(count):
    print(f'{i}번째 문장입니다.') #0 ~ count-1까지 출력

print()

for i in range(1,count+1):
    print(f'{i}번째 문장입니다.') # 1 ~ count까지 출력

    
ex) 1부터 100사이의 수를 출력하는데
    3의 배수, 5의 배수 일때는  
    3의 배수, 5의 배수가 출력되도록

for i in range(1,101):
    if i%3==0:
        print(f'{i} : 3의배수')
    elif i%5==0:
        print(f'{i} : 5의배수')
    else:
        print(f'{i}')

ex) 1부터 100사이의 수를 출력하는데
    3과 5의 공배수 일때는 3과 5의 공배수라고 출력
    3의 배수, 5의 배수 일때는  
    3의 배수, 5의 배수가 출력되도록
    
for i in range(1,101):
    if i%3==0 and i%5==0:
        print(f'{i} : 3과 5의 공배수')
    elif i%3==0:
        print(f'{i} : 3의배수')
    elif i%5==0:
        print(f'{i} : 5의배수')
    else:
        print(i)

ex) 구구단 만들기 (for문 이용)

for i in range(1,10): #2단
    print(f'2 X {i} = {2*i}')

print()

for i in range(1,10): #3단
    print(f'3 X {i} = {3*i}')


ex) 단을 입력받아서 구구단을 출력

num=int(input("단을 입력하세요: "))

for i in range(1,10): #3단
    print(f'{num} X {i} = {num*i}')
    
============================================

# 반복문
'''
[문제] while 문을 이용해서 1부터 100까지의 홀수만 출력하기

[출력결과]
1
3
5
...
97
99

'''



'''
[문제] for문을 이용해서 1~5까지의 숫자들을 차례대로 출력하기

[출력결과]
1 2 3 4 5
    
'''



'''
[문제] for문을 이용해서 1부터 10까지의 합을 구하시오.

[출력결과]
1부터 10까지의 합 : 55

'''



'''
[문제] for문을 이용해서 1부터 100사이의 정수 중 5와 7의 공배수 출력하기

[출력결과]
35 : 5와 7의 공배수!!
70 : 5와 7의 공배수!!

'''








