//
//  main.m
//  TestCategories
//
//  Created by Robert Seitsinger on 4/7/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+SpecialConcats.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"The little brown fox jumps over";
        
        NSLog(@"%@", str);
        
        // Use the new method from the category as
        // if it was a native NSString method.
        NSLog(@"%@", [str extractPartAt:4 For:6]);
    }
    return 0;
}
