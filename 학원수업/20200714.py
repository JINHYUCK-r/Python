# 함수

'''
[문제] 사칙 연산 함수 만들기

숫자 두개로 덧셈, 뺄셈, 곱셈, 나눗셈의 결과가 나오도록 하시오.
(단, 각각의 연산은 함수를 이용해서 만들것)

예) 덧셈코드

def add(x, y):
    덧셈 계산 코드 넣기

나머지 계산코드도 이런식으로 만들기


[출력결과] (매개변수 x를 10으로, 매개변수 y를 20으로 한 결과)
30
-10
200
0.5


[정답1]
def add(x, y):
    return x + y

def sub(x, y):
    return x - y

def mul(x, y):
    return x * y

def div(x, y):
    return x / y

a = add(10, 20)
b = sub(10, 20)
c = mul(10, 20)
d = div(10, 20)

print(a, b, c, d, sep='\n')


[정답2]
def add(x, y):
    print(x + y)

def sub(x, y):
    print(x - y)

def mul(x, y):
    print(x * y)

def div(x, y):
    print(x / y)

x = 10
y = 20

add(x, y)
sub(x, y)
mul(x, y)
div(x, y)


[정답3]
def add(x, y):
    print(x + y)

def sub(x, y):
    print(x - y)

def mul(x, y):
    print(x * y)

def div(x, y):
    print(x / y)

add(10, 20)
sub(10, 20)
mul(10, 20)
div(10, 20)

'''



'''
[문제]

회원등급에 따른 할인율 계산하여 출력하기
매개변수가 2개인(회원등급, 가격)
하나의 함수로 만들어보기

'S' --> 할인율 5%
'G' --> 할인율 10%
'V' --> 할인율 15%


[출력결과]
회원 등급을 입력하세요 : V
가격을 입력하세요 : 20000
3000 원입니다.


[정답]
grade = input('회원 등급을 입력하세요 : ')
price = int(input('가격을 입력하세요 : '))

def solution(grade, price):
    answer = 0
    if grade == 'S':
        answer = int(price * 0.05)
    elif grade == 'G':
        answer = int(price * 0.1)
    elif grade == 'V':
        answer = int(price * 0.15)
    else:
        print('할인율이 없습니다')
    return answer

print(solution(grade, price),'원입니다.')

'''



'''
[문제]

아래의 출력결과와 같이 이름을 받아서 생일 축하 노래를 출력하는 함수 happyBirthday()를 만들고 호출하여 실행해보시오.

[출력결과]
Happy Birthday to you!
Happy Birthday to you!
Happy Birthday, dear 홍길동
Happy Birthday to you!

Happy Birthday to you!
Happy Birthday to you!
Happy Birthday, dear 라이언
Happy Birthday to you!

[정답]
def happyBirthday(person):
    print('Happy Birthday to you!')
    print('Happy Birthday to you!')
    print('Happy Birthday, dear', person)
    print('Happy Birthday to you!')
    print()

happyBirthday('홍길동')
happyBirthday('라이언')

'''



'''
[문제]

원주율을 나타내는 변수 PI = 3.14를 만들고, 반지름을 입력 받은 후
원의 면적을 계산하는 함수, 원의 둘레를 계산하는 함수를 호출하여 실행시켜 보시오.

[출력결과]
반지름을 입력하세요 : 5
반지름 5의 원의 넓이는 78.5이고,
원의 둘레는 31.400000000000002입니다.

[정답]
PI = 3.14  # 전역변수

def area(r):
    return PI * r * r

def cir(r):
    return PI * 2 * r

r = int(input('반지름을 입력하세요 : '))

area_result = area(r)
cir_result = cir(r)

print(f'반지름 {r}의 원의 넓이는 {area_result}이고,')
print(f'원의 둘레는 {cir_result}입니다.')

'''

===============================================

20200714


# 지역 변수 / 전역 변수

 지역변수 : 한정된 지역(함수)에서 사용
 전역변수 : 프로그램 전체에 사용, 예약어 global
 

a = 20      #전역변수
def func1():
    a=10    #지역변수
    print('func1함수 에서의 a의 값 :',a) #지역변수가 출력

def func2():
    print('func2함수 에서의 a의 값 :',a) # 전역변수가 출력

func1() #10
func2() #20




# 재귀호출

  함수 안에서 함수 자기 자신을 호출하는 방식
  일반적인 상황에서는 잘 사용하지 않지만
  반복문보다 좀 더 직관적이고 코드가 간단해서 처리가 빠름
  반드시 종료조건을 만들어 주어야함
  (그렇지않으면)함수가 계속 호출


def hello():
    print('Hello world')
    hello() # 재귀호

hello()

ex) 종료조건이 있는 재귀 호출

def hello(count):
    if count == 0: # count가 0이 되면 종료
        return
    print('hello world')
    count=count-1  # count-=1
    hello(count)   # 재귀호출

hello(5)


# 재귀 호출로 팩토리얼 구하기

  팩토리얼: 1부터 n까지의 양의 정수를 차례대로 곱한값.
            ! 기호로 표시
            ex) 5! = 5*4*3*2*1 = 120


def fa(n):
    if n==1:        # 매개 변수 n이 1이면 
        return 1    #결과값을 1로 반환하고 종료
    return n*fa(n-1)        # 재귀호출

f = fa(5)

print('5! =',f)



# 파일 입출력

 <파일 열기 모드의 종류> 
 r : 읽기 모드 --> 파일을 릭기만 할때 사용
 w : 쓰기 모드 --> 파일에 내용을 쓸때 사용
     (이미 내용이 있는 파일에 쓰면 기존 내용 다 사라짐)
 a : 추가 모드 --> 파일의 마지막에 새로운 내용을 추가할때 사용

 <형식> 파일 생성하고 문자열 쓰기(기본방법)
 파일객체명 = open(파일이름, 파일열기모드)
 파일객체명.write('문자열')
 파일객체명.close()

 <형식> 파일 생성하고 문자열 쓰기(리스트 사용방법)
 리스트명 = [문자열1,문자열2,...]
 파일객체명 = open(파일이름, 파일열기모드)
 파일객체명.writelines(리스트명)
 파일객체명.close()

file = open('hello.txt','w') # hello.txt 파일을 생성해서 열기
file.write('hello python')   # 파일에 문자열 쓰기
file.close()                 # 파일 닫기 (안해도 error는 나지않지만 메모리의 비효율)


f = open('hello.txt','w')   # hello.txt => 상대주소
                            #c:/a/hello.txt  이 형태로 hello.txt에 써도됨.
                            #    =>절대주소. 파이썬은 '\', '/' 둘다 됨
for i in range(1,11):
    data = f'{i}번째 줄입니다.\n' #write함수는 엔터기능이 없어서 엔터를 써줘야함.
    f.write(data)
    
f.close()    


# for 문을 이용해서 파일에 새로운 내용을 추가하기

f = open('hello.txt','a') # 파일 열기 모드를 a로 한다/ 기존에 있던 내용에 새로운 내용을 추가함

for i in range(11,21):
    data = f'{i}번째 줄입니다.\n'
    f.write(data)
    
f.close()

# 파일에서 문자열 읽기

 <형식>
 파일객체명 = open(파일이름,파일열기모드)
 변수명 = 파일객체명.read()
 파일객체명.close()
 print(변수명)     # 화면으로 보고싶을때 사용


f = open('hello.txt','r')   # 파일 열기모드를 읽기모드로 한다.
a = f.read()                # 읽은 내용을 a변수에 담는다
f.close()
print(a)                    # a변수에 담긴 내용을 출력한다.


# 파일에서 여러줄을 리스트로 각각 읽기

 <형식>
 파일객체명  = open(파일이름, 파일열기모드)
 리스트명 = 파일객체명.readlines()
 파일객체명.close()


f=open('hello.txt','r')
lines=f.readlines()     #파일에서 읽은 내용을 리스트로 저장
f.close()

print(lines) # 리스트 형식인지 확인하려고 넣은 코드

for i in lines: # 여러줄을 한 줄씩 차례대로 출력
    print(i, end='') # print함수에 포함되어 있는 엔터기능을 없앰


# with문과 함께 파일 입출력하기

 파일을 열면 항상 close해주어야하는 불편함을 덜어주는 기능
 <형식>
 with open(파일이름, 파일 열기 모드) as 파일객체명:
    수행할 코드


a = ['hello\n','world\n','merong\n','python\n']

with open('file.txt','w') as f: #쓰기모드
    f.writelines(a)             #리스트형식
    f.write('zzz\n')
    f.write('python zz\n')
    
with open('file.txt','r') as f: #열기모드
    b = f.read()

print(b)


===========================================

# 파일 입출력
'''
[문제]

새로운 텍스트 파일 Text.txt를 추가하고 1부터 10까지의 수가 입력되도록 저장하여라.


[파일 출력결과]
12345678910

'''



'''
[문제]

새로운 텍스트 파일 loop.txt를 생성하되, 파일열기모드를 추가모드로 한다. 
1부터 100까지 한 칸씩만 띄우고 모두 한 줄에 저장한다.


[파일 출력결과]
숫자 1 숫자 2 ..... 숫자 99 숫자 100 

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

'''











