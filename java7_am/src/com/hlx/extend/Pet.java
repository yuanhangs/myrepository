package com.hlx.extend;

/**
 * ����
 * 
 * @author Administrator
 *
 */
public class Pet {
	// ����
	private String name; // ����
	private int health; // ����ֵ
	private int love; // ���ܶ�

	//�ܱ��������η�
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

	// ����
	public void print() {
		System.out.println("����ķ���!");
	}

	public Pet() {
		System.out.println("������޲����Ĺ��췽��!");
	}

	/**
	 * �в����Ĺ��췽��
	 * @param name
	 * @param health
	 * @param love
	 */
	public Pet(String name, int health, int love) {
		System.out.println("�������3���ι��췽��!");
		this.name = name;
		this.health = health;
		this.love = love;
	}
	
	public void display(){
		System.out.println("�����display����!");
	}
}
