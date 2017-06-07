
public class CsClass {
	public static void main(String[] args) {
		System.out.println("cs1992");
		System.out.println("MIndle");
		System.out.println("kitri");
		System.out.println("dkdkdkdk");
		
		System.out.println(sum(1, 10));
	}

	
	public static int sum(int start, int end) {
		int result = 0;
		
		for(int i = start; i <= end; i++){
			result += i;
		}
		
		return result;
	}
}
