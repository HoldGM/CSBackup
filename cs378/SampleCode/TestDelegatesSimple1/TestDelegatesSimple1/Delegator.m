//
//  Delegator.m
//  TestDelegatesSimple1
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "Delegator.h"

@implementation Delegator

-(instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

-(void)doSomeWork
{
    NSLog(@"Delegator: self.delegate.requiredProperty: %@", self.delegate.requiredProperty);
    
    if ([self.delegate respondsToSelector:@selector(printMeRequired)] )
    {
        [self.delegate printMeRequired];
    }
}

@end
