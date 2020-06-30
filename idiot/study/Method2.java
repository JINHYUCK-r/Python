//재귀함수
package com.idiot.study;

public class Method2 {

	public static void main(String[] args) {
		
		System.out.println(fact(5));
		System.out.println(fibo(15));

	}
	//팩토리얼
	 static int fact(int a) {
		int val=1;	//a=5
		
		if(a==1) {	//fact(1)=1
			val=1;
		}else {
			val=a*fact(a-1); //5*fact(4)-> 5*4*fact(3)->>>>5*4*3*2*fact(1)
							//										1
		}
		return val;
	}
	//피보나치
	static int fibo(int a) {
		int val=1;
		
		if(a==1 || a==2) {
			val=1;
		}else {
			val=fibo(a-2)+fibo(a-1);
		}
		return val;
	}

	
}
