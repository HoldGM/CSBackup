//
//  Delegator.h
//  TestDelegatesSimple1
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DelegatorProtocol.h"

@interface Delegator : NSObject
@property (nonatomic, strong) id<DelegatorProtocol> delegate;

-(void)doSomeWork;

@end
