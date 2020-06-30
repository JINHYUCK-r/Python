package com.idiot.study;

public class Class {
	public static void main(String[] args) {
		animal cat =new animal();
		cat.name="야옹이";
		cat.leg=4;
		cat.run();
		
		animal dog =new animal("멍멍이",4);
		
		
	}
}
class animal{
	String name;
	int leg;
	String type;
	String color;
	
	animal(String name, int leg){
		this.name=name;
		this.leg=leg;
	}
	
	animal(){
	}
	
	static void run() {
		System.out.println("달린다.");
	}
	void crying() {
		System.out.println("운다");
	}
}



