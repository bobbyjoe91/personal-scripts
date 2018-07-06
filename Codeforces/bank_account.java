import java.util.Scanner;
import java.lang.Math;

public class bank_account{
	public static void main(String[] args){
		Scanner in = new Scanner(System.in);
		int account = in.nextInt();
		if(account >= 0){
			System.out.println(account);
		}
		else{
			account = Math.abs(account);
			int erase_last_digit = (account - account%10)/10;
			int erase_bfr_last = (account%10) + (account - account%100)/10;
			if(account > erase_last_digit){
				account = erase_last_digit;
			}
			if(account > erase_bfr_last){
				account = erase_bfr_last;
			}
			System.out.println(account*(-1));
		}
	}
}
