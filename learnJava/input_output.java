import java.util.Scanner;

public class input_output{
	public static void main(String args[]){
		Scanner input = new Scanner(System.in); //'input' as new 'Scanner' object
		System.out.println("Input two number:");
		int first = input.nextInt(); // first is 'input' method
		int second = input.nextInt();
		int sum;
		
		sum = first + second;
		System.out.println(sum);
		
		System.out.print("\nInteger checker\nPlease type something: ");
		boolean number = input.hasNextInt();
		if(number == true) System.out.println("Inputted number is integer");
		else System.out.println("Inputted number isn't an integer");
		String web = "https://docs.oracle.com/javase/7/docs/api/java/util/Scanner.html";
		System.out.printf("Learn more: %s\n",web);
	}
}
