#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define mx 101

double mean(int *data, int n){
    int m=n,i; float total=0;
    for(i=0;i<n;i++){
        total=total+*(data+i);
    }
    return total/m;
}
double variance(int *data, int n){
    int i; double result;
    for(i=0;i<n;i++){
        result=result+pow((*(data+i)-mean(data,n)),2);
    }
    return result/n;
}
double stddev(int *data, int n){
    return sqrt(variance(data,n));
}

double stat(double (*function)(int *, int), int *data, int n){
    return (*function)(data,n);
}

int main(){
    int i,n,*data;
    char op;

    scanf("%c", &op);
    scanf("%d",&n);
    *data=(int*)malloc(n*sizeof(int));
    for(i=0;i<n;i++){
        scanf("%d",data+i);
    }
    switch (op) {
        case 'M': printf("%f\n", stat(mean, data, n)); break;
        case 'V': printf("%f\n", stat(variance, data, n)); break;
        case 'S': printf("%f\n", stat(stddev, data, n));
    }
    return 0;
}
