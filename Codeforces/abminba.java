import java.util.Scanner;

public class abminba{
	//can't handle test case 5 (big number tes case)
	public static void main(String[] args){
		Scanner input = new Scanner(System.in);
		double a = input.nextDouble();
		double b = input.nextDouble();
		System.out.println((Math.pow(a,b) - Math.pow(b,a)));
	}
}
