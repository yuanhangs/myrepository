package com.hlx.ar;

import com.hlx.extend.Dog;
import com.hlx.extend.Tiger;

public class TestMaster {

	public static void main(String[] args) {
		//1>��������
		Master master=new Master("�ʾ�");
		
		//2>С��
		Dog dog=new Dog();
		dog.setName("�ʷ�");
		
		//3>���÷���
		master.cure(dog);
		
		
		System.out.println("\n");
		
		//2>С��
		Tiger tiger=new Tiger();
		tiger.setName("����");
		
		//3>���÷���
		master.cure(tiger);
	}
}
