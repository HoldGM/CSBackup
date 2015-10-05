//
//  Delegatee1.m
//  TestDelegatesSimple
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "Delegatee1.h"

@implementation Delegatee1

@synthesize requiredProperty;

-(instancetype)init
{
    self = [super init];
    if (self) {
        requiredProperty = @"Delegatee1ReqProp";
    }
    return self;
}

-(void)printMeRequired
{
    NSLog(@"Delegatee1: printMeRequired");
}

@end
