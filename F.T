#include <stdio.h>
#include <math.h>

int main() {
    double num;
    scanf("%lf", &num);

    if (num >= 1) {
        printf("입력 오류\n");
        return 1;
    }

    int digit = 0;
    for (; num > ((long)num); num *= 10, digit++);

    if (digit > 7) {
        printf("입력 오류\n");
        return 1;
    }

    int numerator = num;
    int denominator = pow(10, digit);

    int a = denominator;
    int b = numerator;
    int mod = a % b;

    while (mod > 0) {
        a = b;
        b = mod;
        mod = a % b;
    }

    numerator /= b;
    denominator /= b;

    printf("%d / %d\n", numerator, denominator);

    return 0;
}
