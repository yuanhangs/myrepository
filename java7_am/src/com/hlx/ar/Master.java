package com.hlx.ar;

import com.hlx.extend.Dog;
import com.hlx.extend.Pet;
import com.hlx.extend.Tiger;

/**
 * 
 * @author Administrator
 * 
 * 多态: 必须是父子关系,同一个动作(cure)不同对象(dog,penigue)执行出不同的结果!
 *
 */
public class Master {
	
	//属性
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * 有参数的构造方法
	 * @param name
	 */
	public Master(String name){
		this.name=name;
	}
	
	/**
	 * 带你的爱心宠物看病
	 * @param dog
	 */
//	public void cure(Dog dog){
//		 System.out.println(this.name+"主人带 ["+dog.getName()+"] 去看病,打针、吃药");
//
//	}
	
	/**
	 * 带你的爱心宠物看病
	 * @param dog
	 */
//	public void cure(Tiger tiger){
//		System.out.println(this.name+"主人带 ["+tiger.getName()+"] 去看病,打针!!");
//		
//	}
	
	
	//如果你领养了新的宠物,那么主人类就要多添加一个看病的方法!
	//能不能不修改主人类!能否解决这个问题呢?
	//多态来实现!!
	public void cure(Pet pet){
		System.out.println(this.name+"主人带 ["+pet.getName()+"] 去看病,打针!!");
		
	}

}
