package com.idiot.mission;

import java.util.Scanner;

public class Money_game {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		int[] money = {50000,10000,5000,1000,500,100,50,10,5,1 };

		int[] m_count= new int[10];

		System.out.printf("월급을 입력하세요: ");

		int x = scan.nextInt();
		
		
		
		
		

		
		
		
		

		for (int i = 0; i < money.length; i++) {
			m_count[i] = x / money[i];
			x = x % money[i];
			System.out.printf("%d 원 : %d 개\n", money[i], m_count[i]);

	}
		int sum=0;
		for(int i =0; i<m_count.length; i++) {
			sum+=money[i]*m_count[i];
		}
System.out.println(sum);
}
	
	
}
