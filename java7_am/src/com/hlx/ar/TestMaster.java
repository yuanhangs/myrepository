package com.hlx.ar;

import com.hlx.extend.Dog;
import com.hlx.extend.Tiger;

public class TestMaster {

	public static void main(String[] args) {
		//1>创建对象
		Master master=new Master("甘静");
		
		//2>小狗
		Dog dog=new Dog();
		dog.setName("肥肥");
		
		//3>调用方法
		master.cure(dog);
		
		
		System.out.println("\n");
		
		//2>小狗
		Tiger tiger=new Tiger();
		tiger.setName("静静");
		
		//3>调用方法
		master.cure(tiger);
	}
}
