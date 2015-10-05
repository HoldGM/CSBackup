//
//  main.m
//  TestDelegatesSimple1
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Delegator.h"
#import "Delegatee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Delegator *delegator = [Delegator new];
        Delegatee *delegatee = [Delegatee new];
        
        delegator.delegate = delegatee;
        
        [delegator doSomeWork];
    }
    return 0;
}
