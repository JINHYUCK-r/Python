package com.idiot.mission;

public class Method_gugudan {
	public static void main(String[] args) {

	gugudan(1,2);
	gugudan(3);
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	static void gugudan(int a, int b) {
		for(int i =a; i<=b; i++) {
			gugudan(i);
			System.out.println("---------------");
		}
	
	}
	static void gugudan(int a) {
		for(int j=1; j<=9; j++) {
			System.out.printf("%d * %d = %d\n",a,j,a*j);
	}
}
}
