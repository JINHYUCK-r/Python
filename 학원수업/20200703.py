### 문자열

'''
[문제]

• 자신의 이름을 100번 출력하여 보자.

'''



'''
[문제]

• 1.‘무궁화 꽃이 피었습니다.’를 띄어쓰기 기준으로 나눠 덧셈을 해 보자.

• 2. 아래의 출력결과와 같이 'My Program'을 출력해보자.

[출력결과]
==================================================
My Program
==================================================



[정답]

print('무궁화 ' + '꽃이 ' + '피었습니다.')



[정답]
print("=" * 50)
print("My Program")
print("=" * 50)

'''


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

[정답]
string = 'PYTHON'

print(string[0])
print(string[1])
print(string[5])

print(string[-1])
print(string[-3])
print(string[-6])

'''


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

[정답]
mystr = 'GOOD NIGHT'

print(mystr[1:3])
print(mystr[4:10])
print(mystr[-3:-1])
print(mystr[-8:-6])


'''

=====================================================================

#20200703

# 문자열 포매팅(formatting)

# 1.기본포매팅
 
 %s : 문자열(string)
 %c : 문자 1개(character)
 %d : 정수(integer)
 %f : 실수, 부동소수점(floating)
 %o : 8진수
 %x : 16진수
 %% : 문자 '%' 표현

print("I eat %d apples." %3)
print("I eat %s apples." %"five")

number=4
print("I eat %d apples." %number)

print("Error is %d%%." %100) # %기호 표시

print("%0.3f" %3.14159) # 소수 셋째짜리까지 표현할때 사용(반올림해줌)



# format 함수를 사용한 포매팅

 중괄호 포함한 문자열 뒤에 마침표찍고
 format() 함수 사용하되, 중괄호 개수와 format() 함수 안 매개변수 개수는 반드시 같아야함.
 문자열의 중괄호 기호와 format() 함수 괄호 안의 숫자가 문자열이 됨.

 <형식>
 '문자열{}'.format(변수 또는 상수)

print("I eat {} apples.".format(2))

num1=4
num2=2
print("I eat {0} apples. You eat {1} apples.".format(num1,num2)) #format 함수 변수의 첫번째가 0번
print("I eat {1} apples. You eat {0} apples.".format(num1,num2))
print("I eat {num1} apples. You eat {num2} apples.".format(num1=6,num2=3))
print("I eat {0} apples. You eat {num} apples.".format(7,num=8))

print("{:<10}".format("Hi")) #Hi                    #왼쪽정렬/ 숫자는 전체 칸을 말함
print("{:>10}".format("Hi")) #        Hi            #오른쪽정렬
print("{:^10}".format("Hi")) #    Hi                #가운데 정렬
print("{:=^20}".format("Hi")) #=========Hi========= #전체 20칸에 빈칸은 =을 넣어라


n=3.14159
print("{0:.3f}".format(n)) #3.142 #소수셋째자리 표현

print("{{ python }}".format()) #중괄호 표현/ 띄어쓰기까지 그대로 출력됨


# f 문자열 포매팅( 파이썬 3.6버전 이상)
 <형식>
 f'문자열 {변수명} 문자열'

name="홍길동"
age=20

print(f"나의 이름은 {name}입니다. 나이는 {age}입니다.")
print(f"나는 내년이면 {age+1}살이 됩니다.")


print(f'{"Hi":=^20}')   #가운데 정렬/ 20칸/ 빈칸은 =로 채워라
print(f'{"Hi":!<20}')   #왼쪽 정렬/ 20칸/ 빈칸은 !로 채워라

n=3.14159
print(f"{n:.3f}") #소수 셋째자리 출력

print(f"{{ python }}")


# 포매팅 비교하기

print("I eat",3,"apples.")
print("I eat %d apples." %3) # 기본 포매팅
print("I eat {} apples.".format(3)) #format 함수 포매팅
print(f"I eat {3} apples.") #f 문자열 포매팅  <- 추천(가장 최신)



#연산자를 이용하여 동전교환 프로그램 만들기 (각각의 포매팅 적용)

money=7777

c500=money//500
money=money%500 #money %=500

c100 = money//100
money=money%100

c50 = money//50
money%=50

c10 = money//10
money%=10

#기본 포매팅
print("500원짜리 -> %d개" %c500)
print("100원짜리 -> %d개" %c100)
print("50원짜리 -> %d개" %c50)
print("10원짜리 -> %d개" %c10)
print("바꾸지 못한 잔돈 -> %d원" %money)

print()

#format함수 포매팅
print("500원짜리 -> {}개".format(c500))
print("100원짜리 -> {}개".format(c100))
print("50원짜리 -> {}개".format(c50))
print("10원짜리 -> {}개".format(c10))
print("바꾸지못한 잔돈 -> {}원".format(money))

print()

#f문자열 포매팅
print(f"500원짜리 -> {c500}개")
print(f"100원짜리 -> {c100}개")
print(f"50원짜리 -> {c50}개")
print(f"10원짜리 -> {c10}개")
print(f"바꾸지 못한 잔돈 -> {money}원")

[출력결과]
500원짜리 -> 15개
100원짜리 -> 2개
50원짜리 -> 1개
10원짜리 -> 2개
바꾸지 못한 잔돈 -> 7원




# 리스트

 여러가지 자료를 저장할수있는 자료모음
 여러개의 변수가 하나의 덩어리로 합쳐진 상태
 다른 언어의 배열과 비슷한 개념
 대괄호 내부에 자료들을 넣어 선어

 리스트의 인덱스 번호도 0부터 시작
 <형식>
 리스트명 =[요소1(값1),요소2(값2),....]
 

a=[]                # 빈 리스트
b=[1,2,3]           
c=["a","b","c","d"]
d=[1,2,"a","b",True]# 여러 자료형으로 구성된 리스트
e=[1,2,["a","b"]]   # 이중 리스트

print(b)
print(c)
print(e)

print(d[0])
print(e[2]) #['a', 'b']
print(e[-1]) #['a', 'b']
print(e[2][0]) #a


a=[1,2,["a","b",["Life","is"]]]

print(a) # [1, 2, ['a', 'b', ['Life', 'is']]] # 삼중 리스트
print(a[2][2][0]) # Life

# 리스트 슬라이싱

a =[1,2,3,4,5]
print(a[0:2])
print(a[2:3])
print(a[:3])
print(a[2:])


a=[1,2,3,["b","c","d"],4,5]
print(a[2:5]) #[3, ['b', 'c', 'd'], 4]
print(a[3][:2]) #['b', 'c']


# 리스트 연산자와 관련 함수들

list1 = [1,2,3]
list2 = [4,5,6]
print("list1 -->",list1)
print("list2 -->",list2)


print("list1 + list2 =>",list1+list2) # [1, 2, 3, 4, 5, 6]
print("list1 * 3 =>",list1*3) # [1, 2, 3, 1, 2, 3, 1, 2, 3]

print(len(list1)) #3  #리스트 길이 구하기

print(min(list1)) #1  #리스트 요소중 가장 작은값

print(max(list1)) #3  #리스트 요소중 가장 큰 값 구하기

print(sum(list1)) #6  # 리스트 요소들의 합계 구하기



==================================================================


# 문자열 포매팅 (formatting)
'''
[문제]
변수 number에 숫자 5를 담고
아래의 출력결과와 같이 출력되도록 하시오.
포매팅 형식은 기본 포매팅, format 함수 포매팅, f 문자열 포매팅
3가지 방식으로 표현하시오.


[출력결과]
I eat 5 apples.  --> 기본 포매팅 형식
I eat 5 apples.  --> format 함수 포매팅 형식
I eat 5 apples.  --> f 문자열 포매팅 형식

'''



'''
[문제]
변수 num1에 숫자 3을 담고, 변수 num2에 숫자 5를 담은 후
아래의 출력결과와 같이 출력하시오.
이번 포매팅 형식은 format 함수 포매팅, f 문자열 포매팅
2가지 방식으로 표현하시오.


[출력결과]
I eat 3 apples. You eat 5 apples.
I eat 3 apples. You eat 5 apples.

'''



'''
[문제] 연산자를 이용하여 지폐 교환 프로그램 만들기

수업 때 진행한 동전 교환 프로그램의 코드를 일부 변경해서
지폐 교환 프로그램으로 바꾸어보자.
포매팅 형식은 기본 포매팅, format 함수 포매팅, f 문자열 포매팅 형식 중
아무거나 선택하여 출력해보자.


[출력결과]
교환할 돈 : 777777

50000원짜리-->15개
10000원짜리-->2개
5000원짜리-->1개
1000원짜리-->2개
바꾸지 못한 잔돈-->777개

'''























