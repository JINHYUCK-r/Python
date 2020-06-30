package com.idiot.study;

public class Array1 {

	public static void main(String[] args) {
		
		//순차정렬
		int[] array = {1,5,3,4,2};
		for(int i=0; i<array.length; i++) {
			for(int j=i; j<array.length; j++) {
				if(array[i]>array[j]) {
					int temp = array[i];
					array[i] = array[j];
					array[j] = temp;
					
				}
			}
		}
		
		for(int i : array) {
			System.out.println(i);
		}
		//버블정렬
		int[] array2 = {1,5,3,4,2};
		
		for(int i=0; i<array2.length; i++) {
			for(int j=0; j<array2.length-i-1; j++) {
				if(array2[j]>array2[j+1]) {
					int temp = array2[j];
					array2[j] = array2[j+1];
					array2[j+1] = temp;
				}
			}
		}
		for(int i:array2) {
			System.out.println(i);
		}
		
		

	}

}
