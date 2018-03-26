package com.hlx.extend;

/**
 * 父类
 * 
 * @author Administrator
 *
 */
public class Pet {
	// 属性
	private String name; // 名称
	private int health; // 健康值
	private int love; // 亲密度

	//受保护的修饰符
	protected int count=1000;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getHealth() {
		return health;
	}

	public void setHealth(int health) {
		this.health = health;
	}

	public int getLove() {
		return love;
	}

	public void setLove(int love) {
		this.love = love;
	}

	// 方法
	public void print() {
		System.out.println("父类的方法!");
	}

	public Pet() {
		System.out.println("父类的无参数的构造方法!");
	}

	/**
	 * 有参数的构造方法
	 * @param name
	 * @param health
	 * @param love
	 */
	public Pet(String name, int health, int love) {
		System.out.println("父类的有3个参构造方法!");
		this.name = name;
		this.health = health;
		this.love = love;
	}
	
	public void display(){
		System.out.println("父类的display方法!");
	}
}
