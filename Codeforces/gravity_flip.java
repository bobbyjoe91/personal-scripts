import java.util.Scanner;

public class gravity_flip{
	public static int[] sort(int[] arr, int length){
		int temp;
		//bubble sort
		for(int i = 1; i < length; i++){
			for(int j = 1; j <= length-i; j++){
				if(arr[j] < arr[j-1]){
					temp = arr[j];
					arr[j] = arr[j-1];
					arr[j-1] = temp;
				}
			}
		}
		return arr;
	}
	public static void main(String args[]){
		//initialize 'input' as obj. of Scanner class
		Scanner input = new Scanner(System.in);
		//'n' as object of 'input' object
		int n = input.nextInt();
		//init. array of blocks
		int[] blocks = new int[n];
		//input array
		for(int i = 0; i < n; i++){
			blocks[i] = input.nextInt();
		}
		//sort 'blocks' and pass it to 'result'
		int[] result = sort(blocks, n);
		//printing
		for(int i = 0; i < n; i++){
			if(i != n-1) System.out.printf("%d ",result[i]);
			else System.out.printf("%d\n",result[i]);
		}
	}
}
