package POJO_MODEL.employee_hr_payroll_management.generators;

public class KeyFix {
	public static String Char10Increment(String key) {
		String prefix = key.substring(0, 4);
		int suffix = Integer.parseInt(key.substring(4));
        String newSuffix = String.format("%06d", suffix + 1);
       return prefix + newSuffix;
	}
	
	public static int IntIncrement(int key) {
		return ++key;
	}
}
