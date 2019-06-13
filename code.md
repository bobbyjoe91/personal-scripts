# Tugas Algoritme
### Rekursif
## Fungsi Ackermann
```C
#include <stdio.h>

int Ackermann(int m, int n){
    if(m == 0){
        return n+1;
    }
    else{
        if(m > 0 && n == 0){
           return Ackermann(m-1,1);
        }
        else{
            n=Ackermann(m,n-1);
            return Ackermann(m-1,n);
        }
    }
}

int main()
{
    int m, n;
    scanf("%d %d",&m, &n);
    printf("%d",Ackermann(m,n));
    return 0;
}

```

## Barisan Tribonacci
```C
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
```


