import java.util.Scanner;

public class thesum{
	public static void main(String[] args){
		Scanner input = new Scanner(System.in);
		int n = input.nextInt();
		int sum = 0, tmp;
		int[] fibo = new int[n];
		fibo[0] = 1;
		if(n == 1){
			System.out.println(fibo[0]);
		}
		else{
			fibo[1] = 1;
			for(int i = 0; i < n; i++){
				if(i >= 2){
					fibo[i] = fibo[i-1] + fibo[i-2];
					sum = sum + fibo[i];
				}
				else{
					sum = sum + fibo[i];
				}
			}
			System.out.println(sum);
		}
	}
}
