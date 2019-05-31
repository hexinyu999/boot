package study.object;

import java.lang.reflect.Method;

public class TestClass {
	public static void main(String[] args) {
		ClassDemo demo=new ClassDemoImp();
		Class myClass=demo.getClass();
		Method[] methods=myClass.getMethods();
		for(Method m:methods)
			System.out.println(m);
	}
}
