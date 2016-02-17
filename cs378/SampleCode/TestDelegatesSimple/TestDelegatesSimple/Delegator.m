//
//  Delegator.m
//  TestDelegatesSimple
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "Delegator.h"

@interface Delegator()
@property (nonatomic, strong) NSMutableArray *clientList;

@end

@implementation Delegator

-(instancetype)init
{
    self = [super init];
    if (self) {
        _clientList = [NSMutableArray new];
    }
    return self;
}

-(void)registerClient:(id<DelegatorProtocol>)client
{
    [self.clientList addObject:client];
}

-(void)unregisterClient:(id<DelegatorProtocol>)client
{
    [self.clientList removeObject:client];
}

-(void)doSomeWork
{
    for (id<DelegatorProtocol> client in self.clientList)
    {
        NSLog(@"Delegator: client.requiredProperty: %@", client.requiredProperty);
        
        if ([client respondsToSelector:@selector(printMeRequired)] )
        {
            [client printMeRequired];
        }
    }
}

@end
