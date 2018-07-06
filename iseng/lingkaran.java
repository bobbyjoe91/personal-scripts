import java.util.Scanner;

class Circle{
	long r;
	double phi = 3.14;
	public Circle(){
		this.r = 0;
	}
	public Circle(long radius){
		this.r = radius;
	}
	public double Area(){
		return phi*r*r;
	}
	public double Perim(){
		return phi*2*r;
	}
}

public class lingkaran{
	public static void main(String args[]){
		Scanner input = new Scanner(System.in);
		int radius = input.nextInt();
		
		Circle circ = new Circle(radius);
		System.out.print(circ.Area());
		System.out.print(circ.Perim());
	}
}
