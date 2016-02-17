//
//  Delegatee2.m
//  TestDelegatesSimple
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "Delegatee2.h"

@implementation Delegatee2

@synthesize requiredProperty;

-(instancetype)init
{
    self = [super init];
    if (self) {
        requiredProperty = @"Delegatee2ReqProp";
    }
    return self;
}

-(void)printMeRequired
{
    NSLog(@"Delegatee2: printMeRequired");
}

@end
