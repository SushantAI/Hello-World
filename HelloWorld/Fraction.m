//
//  Fraction.m
//  HelloWorld
//
//  Created by acp16ssc on 06/10/2016.
//  Copyright © 2016 acp16ssc. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction


-(id)init   // -(id)init is the default constructor (which we are overriding here); Constructor is just a method called init; no special syntax, id is a pointer to an object of any class
{
    self = [super init];    // [super init] invokes the init method of the superclass
    if(self)
    {
        _pNumerator = 0;
        _pDenominator = 0;
    }
    return self;
}

-(id) initPropWithNumDeno: (int) Num andDeno: (int) Deno
{
    self = [super init];    // [super init] invokes the init method of the superclass
    if(self)
    {
        [self pSetFraction:Num n:Deno ];
    }
    return self;
}

-(Fraction *)pAdd: (Fraction *) f2
{
    int num, den;
    num = (self.pNumerator * f2.pDenominator) + (self.pDenominator * f2.pNumerator);
    den = self.pDenominator * f2.pDenominator;
    return [[Fraction alloc]initPropWithNumDeno:num andDeno:den];
}

-(void)pSetFraction : (int) val n: (int) den;
{
    self.pNumerator = val;
    self.pDenominator = den;
}

-(void)pprint
{
    NSLog(@"The resultant fraction is %d/%d",self.pNumerator,self.pDenominator);
}

/*------------------*/

-(id) initWithNumDeno: (int) Num andDeno: (int) Deno
{
    self = [super init];    // [super init] invokes the init method of the superclass
    if(self)
    {
        Numerator = Num;
        Denominator = Deno;
    }
    return self;
}

-(Fraction *)Add: (Fraction *) f2
{
    int num, den;
    num = (self.GetNum * f2.GetDeno) + (self.GetDeno * f2.GetNum);
    den = self.GetDeno * f2.GetDeno;
    return [[Fraction alloc]initWithNumDeno:num andDeno:den];
}

-(void)SetFraction : (int) val n: (int) den;
{
    Numerator = val;
    Denominator = den;
}

-(void)print
{
    NSLog(@"The resultant fraction is %d/%d",Numerator,Denominator);
}

-(int)GetNum
{
    return Numerator;
}

-(int)GetDeno
{
    return Denominator;
}

-(void)SetNum : (int) val
{
    Numerator = val;
}

-(void)SetDeno : (int) val
{
    Denominator = val;
}

@end