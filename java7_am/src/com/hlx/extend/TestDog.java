package com.hlx.extend;

public class TestDog {

	public static void main(String[] args){
		
		//1>实例化对象
		Dog dog =new Dog();
		
		//2>给属性赋值
		dog.setName("花花");
		dog.setHealth(8);
		dog.setLove(2);
		
		//3>调用方法
//		dog.show();
		dog.print();
		
	}
}
