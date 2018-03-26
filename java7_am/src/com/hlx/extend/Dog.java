package com.hlx.extend;

/**
 * 子类
 * 
 * @author Administrator
 * 
 *         方法重写: 满足的要求: 1)必须是继承关系; 2)方法名相同,参数列表相同; 3)修饰符(public)不能缩小被重写方法的访问权限
 *         4)返回值必须相同;
 * 
 * 
 *         super的使用:super用在子类中，访问直接父类中的被屏蔽的内容，进一步提高代码的重用性和灵活性。
 *         super关键字不仅可以访问父类的构造方法，还可以访问父类的成员，包括父类的属性、一般方法等，无法通过super访问private成员
 * 
 *         this的使用:this用在当前类中,可以访问父类的成员，包括父类的属性、一般方法等等; 
 * 
 */
public class Dog extends Pet {

	// 特有的属性
	private String strain = "牧羊犬";

	public String getStrain() {
		return strain;
	}

	public void setStrain(String strain) {
		this.strain = strain;
	}

	/**
	 * 构造方法只能调用,没有继承!!
	 */
	public Dog() {
		// super();//隐式调用父类的构造方法;(可写可不写)
		System.out.println("子类Dog的构造方法!");
	}

	/**
	 * 参数的构造方法
	 * 
	 * @param name
	 * @param health
	 * @param love
	 * @param strain
	 */
	public Dog(String name, int health, int love, String strain) {

		// 调用父类的构造方法必须用关键字super();(构造方法方法的第一行)
		 super(name, health, love);

		//(构造方法方法的第一行);当前类的构造方法的调用!!!
		//this();

		// 如果没有调用父类的有参数的构造方法,那么就会默认调用父类无参数的构造方法;!

		this.strain = strain;

		System.out.println("子类Dog有4个参的构造方法!");
	}

	/**
	 * 输出结果
	 */
	public void show() {
		System.out.println(getName() + "\t" + getHealth() + "\t" + getLove() + "\t" + strain);
	}

	/**
	 * 输出结果
	 * 
	 * @Override 代表是重写;
	 */
	@Override
	public void print() {
		// protected void print() {

		// 调用父类的方法
		// super.display();
		this.display();

		// 调用父类的属性
		// System.out.println(super.count);
		System.out.println(this.count);

		System.out.println(getName() + "\t" + getHealth() + "\t" + getLove() + "\t" + strain);
	}

}
