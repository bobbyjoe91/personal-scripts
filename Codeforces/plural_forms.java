import java.util.Scanner;

public class plural_forms{
	public static void main(String[] args){
		Scanner input = new Scanner(System.in);
		int test_case = input.nextInt();
		
		while(test_case > 0){
			String input_word = input.next();
			int length = input_word.length();
			char[] word = input_word.toCharArray(); //convert string to array of char
		
			if(word[length-1] == 'y'){
				for(int i = 0; i < length-1; i++){
					System.out.print(word[i]);
				}
				System.out.println("ies");
			}
			else if(word[length-1] == 'f' || (word[length-1] == 'e' && word[length-2] == 'f')){
				for(int i = 0;; i++){
					if((i == length-1 && word[i] == 'f') || (i == length-2 && word[i] == 'f' && word[i+1] == 'e')){
						break;
					}
					else{
						System.out.print(word[i]);
					}
				}
				System.out.println("ves");
			}
			else if(word[length-1] == 's' || (word[length-2] == 'c' && word[length-1] == 'h') || word[length-1] == 'x' || word[length-1] == 'o'){
				input_word = input_word + "es";
				System.out.println(input_word);
			}
			else{
				input_word = input_word + "s";
				System.out.println(input_word);
			}
			test_case--;
		}
	}
}
