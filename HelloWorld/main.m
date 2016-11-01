//
//  main.m
//  HelloWorld
//
//  Created by acp16ssc on 04/10/2016.
//  Copyright © 2016 acp16ssc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        switch(4)
        {
            case 0:
            {
                //WAP that outputs the squares of the numbers from 0.1 to 0.9 in steps of 0.05, with answers given to 8 decimal places and all the points nicely aligned.

                float i = 0.0, num = 0.1;
                for(i=0.0;i<=0.95;i=num)
                {
                    NSLog(@"Square of %f = %0.8f\n", num, num * num);
                    num += 0.05;
                    // Truncate the value after 8 decimal points
                    i = (num * 100000000);
                    num = i/100000000;
                    
                }
                break;
            }
                    
            case 1:
            {
                // WAP that writes the first 25 terms of the Fibonacci series to the console, with all the numbers aligned on the right hand side (right justified)
                // FibonacciSeries();  //0 1 1 2 3 5 8 13
                
                NSLog(@"%d\n", 0);
                NSLog(@"%d\n", 1);
                int curr_val = 1, prev_val = 0, count = 25, temp = 0;
                for(int i=0;i<count;i++)
                {
                    temp = curr_val;
                    curr_val = prev_val + curr_val;
                    prev_val = temp;
                    NSLog(@"%d\n", curr_val);
                }
                break;
            }
            
            case 2:
            {
                int a = 8, b = 15;
                int *ptr_a = &a;
                int *ptr_b = &b;
                NSLog(@"%d %d",*ptr_a,*ptr_b);
                int *ptr_c = &(*ptr_a);
                NSLog(@"%d",*ptr_c);
                ptr_a = ptr_b;
                ptr_b = ptr_c;
                NSLog(@"%d %d",*ptr_a,*ptr_b);
                
                break;
            }
                
            case 3:     // Fraction without properties
            {
                Fraction *f1 = [[Fraction alloc] initWithNumDeno:(6) andDeno:(3)];
                [f1 print];
                Fraction *f2 = [[Fraction alloc] initWithNumDeno: 8 andDeno:2];
                [f2 print];
                [f2 SetFraction:10 n :5];
                [f2 print];
                Fraction * f = [f1 Add : f2];
                [f print];
                break;
            }
                
            case 4:     // Fraction with properties
            {
                Fraction * f = [[Fraction alloc]init];
                f.pNumerator = 15;
                f.pDenominator = 20;
                [f pprint];
                
                Fraction *f1 = [[Fraction alloc] initPropWithNumDeno:(6) andDeno:(3)];
                [f1 pprint];
                Fraction *f2 = [[Fraction alloc] initPropWithNumDeno: 8 andDeno:2];
                [f2 pprint];
                [f2 pSetFraction:10 n :5];
                [f2 pprint];

                Fraction * f3 = [f1 Add : f2];
                [f3 pprint];
                
                break;
            }
                
            case 5:     // Inheritance
            {
                
                break;
            }
                
            default:
            {
                break;
            }
                    
        }
        
    }
    return 0;
}


