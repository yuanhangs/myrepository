package com.hlx.extend;

/**
 * ����
 * 
 * @author Administrator
 * 
 *         ������д: �����Ҫ��: 1)�����Ǽ̳й�ϵ; 2)��������ͬ,�����б���ͬ; 3)���η�(public)������С����д�����ķ���Ȩ��
 *         4)����ֵ������ͬ;
 * 
 * 
 *         super��ʹ��:super���������У�����ֱ�Ӹ����еı����ε����ݣ���һ����ߴ���������Ժ�����ԡ�
 *         super�ؼ��ֲ������Է��ʸ���Ĺ��췽���������Է��ʸ���ĳ�Ա��������������ԡ�һ�㷽���ȣ��޷�ͨ��super����private��Ա
 * 
 *         this��ʹ��:this���ڵ�ǰ����,���Է��ʸ���ĳ�Ա��������������ԡ�һ�㷽���ȵ�; 
 * 
 */
public class Dog extends Pet {

	// ���е�����
	private String strain = "����Ȯ";

	public String getStrain() {
		return strain;
	}

	public void setStrain(String strain) {
		this.strain = strain;
	}

	/**
	 * ���췽��ֻ�ܵ���,û�м̳�!!
	 */
	public Dog() {
		// super();//��ʽ���ø���Ĺ��췽��;(��д�ɲ�д)
		System.out.println("����Dog�Ĺ��췽��!");
	}

	/**
	 * �����Ĺ��췽��
	 * 
	 * @param name
	 * @param health
	 * @param love
	 * @param strain
	 */
	public Dog(String name, int health, int love, String strain) {

		// ���ø���Ĺ��췽�������ùؼ���super();(���췽�������ĵ�һ��)
		 super(name, health, love);

		//(���췽�������ĵ�һ��);��ǰ��Ĺ��췽���ĵ���!!!
		//this();

		// ���û�е��ø�����в����Ĺ��췽��,��ô�ͻ�Ĭ�ϵ��ø����޲����Ĺ��췽��;!

		this.strain = strain;

		System.out.println("����Dog��4���εĹ��췽��!");
	}

	/**
	 * ������
	 */
	public void show() {
		System.out.println(getName() + "\t" + getHealth() + "\t" + getLove() + "\t" + strain);
	}

	/**
	 * ������
	 * 
	 * @Override ��������д;
	 */
	@Override
	public void print() {
		// protected void print() {

		// ���ø���ķ���
		// super.display();
		this.display();

		// ���ø��������
		// System.out.println(super.count);
		System.out.println(this.count);

		System.out.println(getName() + "\t" + getHealth() + "\t" + getLove() + "\t" + strain);
	}

}
