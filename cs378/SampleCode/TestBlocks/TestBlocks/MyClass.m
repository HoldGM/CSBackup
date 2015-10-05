//
//  MyClass.m
//  TestBlocks
//
//  Created by Robert Seitsinger on 4/7/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

+(void)testBlocks
{
    MyClass *obj = [[MyClass alloc] init];
    
    // Call the class method that contains both a success and failure handler (completion block).
    
    // This call will cause the failure block to execute.
    [obj methodWithTotal:50
            SuccessBlock:^(NSUInteger value, NSUInteger result)
            {
                NSLog(@"testBlocks 1: SuccessBlock executed: value passed in: %ld, returned result: %ld", value, result);
            }
            FailureBlock:^(NSUInteger value, NSUInteger result)
            {
                NSLog(@"testBlocks 1: FailureBlock executed: value passed in: %ld, returned result: %ld", value, result);
            }];

    // Call it again, with a different value; to cause the success block to execute.
    [obj methodWithTotal:175
            SuccessBlock:^(NSUInteger value, NSUInteger result)
            {
                NSLog(@"testBlocks 2: SuccessBlock executed: value passed in: %ld, returned result: %ld", value, result);
            }
            FailureBlock:^(NSUInteger value, NSUInteger result)
            {
                NSLog(@"testBlocks 2: FailureBlock executed: value passed in: %ld, returned result: %ld", value, result);
            }];
}

// Method with success and failure completion handlers (blocks)
-(void)methodWithTotal:(NSUInteger) total
          SuccessBlock:(void(^)(NSUInteger value, NSUInteger result)) successBlock
          FailureBlock:(void(^)(NSUInteger value, NSUInteger result)) failureBlock
{
    // Typically, your code would do a bunch of stuff and, depending on whether it ran into any problems
    // or not, it executes the success or failure block passed in.
    
    if (total > 100)
        successBlock(total, 10);
    else
        failureBlock(total, 20);
}

@end
