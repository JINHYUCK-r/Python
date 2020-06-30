package com.idiot.mission;

public class ClassMission {

	public static void main(String[] args) {
		Tv tv1= new Tv();
		tv1.brand="Samsung";
		tv1.inch=13;
		System.out.println("브랜드는 "+tv1.brand+" 인치는 "+tv1.inch);
		tv1.up(); tv1.up(); tv1.up();
		tv1.down();
		
		Tv tv2 = new Tv("LG",15);
		System.out.println("브랜드는 "+tv2.brand+" 인치는 "+tv2.inch);
		tv2.up();tv2.up();
		tv2.down();
		
		

	}

}

class Tv{
	String brand;
	int inch;
	int volume=10;
	
	Tv(){
		
	}
	
	Tv(String brand, int inch){
		this.brand=brand;
		this.inch=inch;
	}
	void up() {
		volume++;
		System.out.println("소리크기가 "+volume+"입니다.");
	}
	void down() {
		volume--;
		System.out.println("소리크기가 "+volume+"입니다.");
	}
}
