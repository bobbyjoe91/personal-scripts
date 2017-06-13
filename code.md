## Fungsi Ackermann

## Barisan Tribonacci
'''C
   #include <stdio.h>

int Tribonacci(int n){
    if(n == 1||n == 2||n == 3){
        return 1;
    }
    else{
        return Tribonacci(n-1) + Tribonacci(n-2) + Tribonacci(n-3);
    }

}

int main()
{
    int n;
    scanf("%d",&n);
    printf("%d",Tribonacci(n));
    return 0;
}
'''


