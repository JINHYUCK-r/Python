### 연산자

# 셸에서 간단한 수학계산 해보기(연산자 우선순위 알아보기)

'''
[문제]
• 괄호가 포함된 계산 5 * (10 + 10) / 2를 수행하여 보자.
• 괄호를 제외하고 5 * 10 + 10 / 2를 수행하여 결과를 비교해 보자.

[정답]
>>> 5 * (10 + 10) / 2
50.0
>>> 5 * 10 + 10 /2
55.0

'''



'''
[문제]
국립환경과학원에서는 아파트에서 수음이 가장 심한 층수를 구하는 계산식을 발표했다.
소음이 가장 심한 층은 0.2467 * 도로와의 거리(m) + 4.159이다.
소음이 가장 심한 층수를 출력해 보자. 단, 층수를 출력할때는 정수로 출력.

--> 도로와의 거리 : 12m

[정답]
>>> int(0.2467 * 12 +4.159)
7

'''



'''
[문제]
L이라는 게임에서 "왜곡"이라는 스킬이 AP * 0.6 + 225의 피해를 준다.
이 게임에서 AP(Ability Power, 주문력)는 마법 능력치를 뜻한다.
스킬의 피해량을 출력해 보자.

--> AP : 102

[정답]
>>> 102 * 0.6 + 225
286.2

'''



# 대입연산자

'''
[문제]
• 1. 'a'와 'b'라는 변수에 문자열 "Assignment operator"가 동시에 할당되도록 해 보자.
• 2. 위에서 설정한 두 변수 a, b를 출력문(print)을 이용하여 출력해 보자.

[정답]
>>> a = b = 'Assignment operator'
>>> print(a, b)
Assignment operator Assignment operator

'''



# 산술연산자

'''
[문제]

• 1. 11711을 17로 나눴을 때의 몫과 나머지를 구해보자.

• 2. 19로 나눴을 때 몫이 4123이고 나머지가 15인 값을 구해보고 이를 검산하여 보자.

• 3. 5자리 자연수 중 17로 나누어떨어지는 가장 큰 수를 구해보자.

• 4. 3의 7제곱을 구해보자.

[정답]
print(11711 // 17)
print(11711 % 17)
print(19 * 4123 + 15)
print(99999 % 17, 99998 % 17, 99997 % 17, 99996 % 17, 99995 % 17, 99994 % 17)
print(3 ** 7)

'''



# 비교 및 논리연산자

'''
[문제]
국어, 영어, 수학, 과학 점수가 있을 때 한 과목이라도 50점 미만이면 불합격으로 정했다.
합격이면 True, 불합격이면 False를 출력해 보자.(if 사용하지 말 것, 점수는 임의로 정할 것)

[출력결과]
False

[정답]
kor = 90
eng = 50
math = 80
sci = 30
print(kor >= 50 and eng >= 50 and math >= 50 and sci >= 50)

print(kor <= 50 or eng <= 50 or math <= 50 or sci <= 50)
'''
========================================================================================
#20200702

# 문자열 자료형

 문자열 (string) : 문자, 단어 등으로 구성된 문자들의 집합
 
print("Hello, python~") #파이썬은 문자열을 쓸때 작은따옴표, 큰따옴표 둘 다 가능
print('Hello, python~')

print("""Life if too short,
you need python.""")  # 여러줄을 입력할때는 시작과 끝에 따옴표 3개를 넣기

print("it's me.") # 어퍼스트로피를 사용할수도 있다.

print('"Python is very easy." he say.') #인용문으로 사용할수도있다 


# 이스케이프 코드

 프로그래밍할때 사용할수 있도록 미리 정의해둔 '문자 조합'
 출력물을 보기 좋게 정렬하는 용도로 사용한다.

 \n : 줄을 바꿀 때 사용 (엔터)
 \t : 문자열 사이에 탭 간격을 줄 때 사용
 \' : 작은따옴표(')를 그대로 표현할때 사용
 \" : 큰따옴표(")를 그대로 표현할때 사용
 \\ : 백슬래쉬(\)를 그대로 표현할때 사용

print('It\'s me.')

print('이름\t나이\t지역')
print('라이언\t20\t대구')
print('어피치\t30\t서울')
print('무지\t40\t부산')


# 문자열 연산
 
 문자열의 덧셈(+) : 두 문자열을 연결
 문자열의 곱셈(*) : 문자열을 곱한 수 만큼 반복 출력
 
a = "문자열"
b = "연산"
c = "안녕"
d ="하세요"

print(a+b) #문자열연산 / 꼭 문자와 문자끼리만 더할것. 
print(c+d) #안녕하세요 / 숫자와 더하면 에러남

print(c*5) #안녕안녕안녕안녕안녕
print(b*10) #연산연산연산연산연산연산연산연산연산연산


# 문자열 인덱싱 (indexing) / 인덱싱과 슬라이싱은 파이썬의 특화된 기능
 문자열(string)에서 문자(charter)의 순서를 숫자로 나타낸 것

 [0] : 문자열의 처음
 [-1] : 문자열의 마지막.

ex)
    p   y   t   h   o   n
    0   1   2   3   4   5 // 0번부터 오르쪽으로 증가
   -6  -5  -4  -3  -2  -1 // -1부터 왼쪽으로 감소

a = "My python" 

print(a[0])  #M
print(a[-1]) #n
print(a[3])  #p
print(a[2])  #빈칸도 포함

print('안녕하세요'[0])
print('안녕하세요'[1])
print('안녕하세요'[2])
print('안녕하세요'[3])
print('안녕하세요'[4])


# 문자열 슬라이싱
           
 문자열의 구간을 표시
 예를 들어 a라는 변수 가 있다면
 a[시작번호:끝번호+1] # 파이썬에서는 끝번호+1 가 중요. 
 a[:] --> 처음부터 끝까지. 모두를 의미

a='python'

print(a[0:2]) #py #0번부터 1번까지 출력
print(a[:])   #python
print(a[-2:-1]) #o

print(a[:3]) #pyt #처음부터 2번까지 출력(시작번호 생략)
print(a[2:]) #thon #2번부터 끝까지 출력 (끝번호 생략)

print('안녕하세요'[1:]) #녕하세요
print('안녕하세요'[:3]) #안녕하
print('안녕하세요'[2:4]) #하세

b='hello'
print(b[1]) #e
print(b[2:4]) #ll

print(b) #hello #인덱싱과 슬라이싱은 원본에 영향을 주지 않는다.


# 문자열 관련 함수와 메서드

a="Life is too short"
print(len(a)) #17 / # len : 문자열 길이 구하기. 글자수를 출력. 공백도 포함. 중요☆

b="victory"
print(max(b)) #y # max : 가장 큰 숫자나 알파벳 순서상 가장 뒤에오는 문자
print(min(b)) #c # min : 가장 작은 숫자나 알파벳 순서상 가장 앞에오는 문자

c="my python"
print(c.title()) #My Python #title() : 첫글자를 모두 대문자로 바꾸어줌
print(c.upper()) #MY PYTHON #upper() : 모두 대문자로 바꾸어줌

d= "MY PYTHON"
print(d.lower()) #my python #lower() : 모두 소문자로 바꾸어줌

e="hobby"
print(e.count('b')) #2 #count(): 문자갯수세기()안의 개수

print(','.join('abcd')) #a,b,c,d #join() : 문자열 삽입
a='aaa'
print(a.join('bbbbbb')) #baaabaaabaaabaaabaaab

b='       python     '
print(b.lstrip())#python        #왼쪽공백 지우기
print(b.rstrip())#       python #오른쪽 공백 지우기
print(b.strip())#python         #양쪽 공백 다 지우기

c= "Life is too short"
print(c.replace("Life","Your leg")) #Your leg is too short # replace(): 치환.단어 바꾸기

print(c.split()) # ['Life', 'is', 'too', 'short']
                 #split():문자열 나누기.  리스트 자료형으로 띄어쓰기 단위로 분할

d="a:b:c:d"
print(d.split(":")) #['a', 'b', 'c', 'd'] #split(":")을 기준으로 나누어라


======================================================================
           ### 문자열

'''
[문제]

• 자신의 이름을 100번 출력하여 보자.

'''
a="라이언"
print(a*100)


'''
[문제]

• 1.‘무궁화 꽃이 피었습니다.’를 띄어쓰기 기준으로 나눠 덧셈을 해 보자.

• 2. 아래의 출력결과와 같이 'My Program'을 출력해보자.

[출력결과]
==================================================
My Program
==================================================

'''
1.
a="무궁화 "
b="꽃이 "
c="피었습니다."
print(a+b+c)

2.
print("="*50)
print("My program")
print("="*50)



# 문자열 인덱싱

'''
[문제]
출력결과를 참고하여 문자열 인덱싱으로 한글자씩 출력해보자.

string = 'PYTHON'

[출력결과]
P
Y
N
N
H
P

'''
string = "PYTHON"
print(string[0])
print(string[1])
print(string[2])
print(string[3])
print(string[4])
print(string[5])

# 문자열 슬라이싱
'''
[문제]
문자열 슬라이싱으로 출력결과와 같도록 출력해보자.

mystr = 'GOOD NIGHT'

[출력결과]
OO
 NIGHT
GH
OD

'''
mystr = "GOOD NIGHT"
print(mystr[1:3])
print(mystr[4:])
print(mystr[-3:-1])
print(mystr[2:4])


















