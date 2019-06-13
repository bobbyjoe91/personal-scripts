import java.util.Scanner;

public class split{
	//I'll come back later
	public static void main(String[] args){
		Scanner input = new Scanner(System.in);
		String text = input.next();
		String[] splitted = text.split(" ");
		for(int i = 0; i < 10; i++){
			System.out.println(splitted[i]);
		}
	}
}
