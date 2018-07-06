import java.util.Scanner;

public class fibo{
	//a function can be built in the same class as main()
	public static int fibonacci(int n){
		if (n == 1){
			return 1;
		}
		else if (n == 0){
			return 0;
		}
		else{
			return fibonacci(n-2) + fibonacci(n-1);
		}
	}
	public static void main(String args[]){
		Scanner input = new Scanner(System.in);
		System.out.print("Insert n: ");
		
		int u = input.nextInt(); // scanning
		int result = fibonacci(u);
		
		System.out.println(result);
	}
}
