package com.hlx.ar;

import com.hlx.extend.Dog;
import com.hlx.extend.Pet;
import com.hlx.extend.Tiger;

/**
 * 
 * @author Administrator
 * 
 * ��̬: �����Ǹ��ӹ�ϵ,ͬһ������(cure)��ͬ����(dog,penigue)ִ�г���ͬ�Ľ��!
 *
 */
public class Master {
	
	//����
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * �в����Ĺ��췽��
	 * @param name
	 */
	public Master(String name){
		this.name=name;
	}
	
	/**
	 * ����İ��ĳ��￴��
	 * @param dog
	 */
//	public void cure(Dog dog){
//		 System.out.println(this.name+"���˴� ["+dog.getName()+"] ȥ����,���롢��ҩ");
//
//	}
	
	/**
	 * ����İ��ĳ��￴��
	 * @param dog
	 */
//	public void cure(Tiger tiger){
//		System.out.println(this.name+"���˴� ["+tiger.getName()+"] ȥ����,����!!");
//		
//	}
	
	
	//������������µĳ���,��ô�������Ҫ�����һ�������ķ���!
	//�ܲ��ܲ��޸�������!�ܷ������������?
	//��̬��ʵ��!!
	public void cure(Pet pet){
		System.out.println(this.name+"���˴� ["+pet.getName()+"] ȥ����,����!!");
		
	}

}
