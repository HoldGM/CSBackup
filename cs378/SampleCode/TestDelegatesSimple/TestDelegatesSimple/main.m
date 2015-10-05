//
//  main.m
//  TestDelegatesSimple
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Delegator.h"
#import "Delegatee1.h"
#import "Delegatee2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Delegator *delegator = [Delegator new];
        Delegatee1 *delegatee1 = [Delegatee1 new];
        Delegatee2 *delegatee2 = [Delegatee2 new];

        [delegator registerClient:delegatee1];
        [delegator registerClient:delegatee2];

        [delegator doSomeWork];
    }
    
    return 0;
}
