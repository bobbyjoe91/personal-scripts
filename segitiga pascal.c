#include <stdio.h>
#include <stdlib.h>

unsigned int binomial(unsigned int n, unsigned int k){
     if(k == 0 || k == n){
        return 1;
     }
     else{
        return binomial(n-1,k-1)+binomial(n-1,k);
     }
}

int main()
{
    unsigned n,k,count_n=0,count_k=0;
    scanf("%u %u",&n,&k);
    while(count_n<=n){
         count_k=0;
         while(count_k<=count_n){
               printf("%4u",binomial(count_n,count_k));
               count_k++;
         }
         printf("\n");
         count_n++;
    }
    return 0;
}
