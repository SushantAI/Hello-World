//
//  Fraction.h
//  HelloWorld
//
//  Created by acp16ssc on 06/10/2016.
//  Copyright © 2016 acp16ssc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int Numerator;
    int Denominator;
}

@property (assign) int pNumerator;
@property (assign) int pDenominator;
-(Fraction *)pAdd: (Fraction *) f2;
-(void)pprint;
-(id) initPropWithNumDeno: (int) Num andDeno: (int) Deno;
-(void)pSetFraction : (int) val n: (int) den;

-(id)initWithNumDeno: (int) Num andDeno: (int) Deno;
-(void)print;
-(int)GetNum;
-(int)GetDeno;
-(void)SetNum : (int) val;
-(void)SetDeno : (int) val;
-(Fraction *)Add: (Fraction *) f2;
-(void)SetFraction : (int) val n: (int) den;

@end
