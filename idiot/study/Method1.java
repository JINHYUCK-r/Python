package com.idiot.study;

public class Method1 {

	public static void main(String[] args) {
		
		
		sum(1,2); 
		minus(1,2);
		
	}
	private		//접근자: public , private, default,protected 
	static 		// 메모리에 올린다. staic 쓰면은 객체선언을 하지않아도된다.
	int 		//자료형 리턴값이 없다 -> void 리턴값이 있다-> 맞는자료형태
	sum 		// 매소드 이름 아무거나 지정안해도됨
	(int a, int b) // 파라미터, 매개변수
	{					//구현부	
		int sum= a+b;
		return sum;		//return 으로 뭘 내보내겟다
		
	}
	
	static void minus(int a, int b) {
		System.out.println(a-b);
	}
	
}
