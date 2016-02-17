//
//  Delegator.h
//  TestDelegatesSimple
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

// This class calls a delegatee (delegate) to do some work.

#import <Foundation/Foundation.h>
#import "DelegatorProtocol.h"

@interface Delegator : NSObject
-(void)registerClient:(id<DelegatorProtocol>)client;
-(void)unregisterClient:(id<DelegatorProtocol>)client;
-(void)doSomeWork;

@end
