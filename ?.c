#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double mean(int *data, int n){
    int i; double total=0;
    for(i=0;i<n;i++){
        total=total+*(data+i);
    }
    return total/n;
}
double variance(int *data, int n){
    int i; double result=0,m=mean(data,n);
    for(i=0;i<n;i++){
        result=result+pow((*(data+i)-m),2);
    }
    return result/n;
}
double stddev(int *data, int n){
    double v=sqrt(variance(data,n));
    return v;
}

double stat(double (*function)(int *, int), int *data, int n){
    return (*function)(data,n);
}

int main(){
    int i,n,*data;
    char op;

    scanf("%c", &op);
    scanf("%d",&n);
    data=(int*)malloc(n*sizeof(int));
    for(i=0;i<n;i++){
        scanf("%d",data+i);
    }
    switch (op) {
        case 'M': printf("%lf\n", stat(mean, data, n)); break;
        case 'V': printf("%lf\n", stat(variance, data, n)); break;
        case 'S': printf("%lf\n", stat(stddev, data, n));
    }
    return 0;
}
