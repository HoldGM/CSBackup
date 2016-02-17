//
//  Delegatee.m
//  TestDelegatesSimple1
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "Delegatee.h"

@implementation Delegatee

@synthesize requiredProperty;

-(instancetype)init
{
    self = [super init];
    if (self) {
        requiredProperty = @"DelegateeReqProp";
    }
    return self;
}

-(void)printMeRequired
{
    NSLog(@"Delegatee: printMeRequired");
}

@end
