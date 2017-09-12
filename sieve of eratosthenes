#include <stdio.h>
#include <math.h>
#define C 100000

int main()
{
    int i=0, n, m, sieve[C]={0}, k, divisor=2;
    scanf("%d %d", &n,&m);
    for(;n<m+1;n++){
        sieve[i]=n;
        i++;
    }
    k=i;
    for(;divisor<sqrt(m);divisor++){
        for(i=0;i<k;i++){
            if((sieve[i]%divisor == 0 && sieve[i]!=divisor) || sieve[i] == 1){
                sieve[i]=0;
            }
        }
    }
    for(i=0;i<k;i++){
        if(sieve[i] != 0){
            printf("%d ",sieve[i]);
        }
    }
    return 0;
}
