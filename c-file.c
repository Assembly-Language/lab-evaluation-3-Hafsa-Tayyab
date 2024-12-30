
#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(int array[]);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int array[] = {1,2,3,4,5,6,7,8,9,10};
    printf("Inside C. \n");
    getch();

    printf("Calling Sum Function from assembly. \n");
    asmfunc(array); //assembly proc calling
   
    getch();
    
    printf("Back to C ! \n"); // printing in c
      
    return 0;
}