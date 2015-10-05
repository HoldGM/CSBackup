//
//  main.m
//  TestBlocks
//
//  Created by Robert Seitsinger on 3/3/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

typedef NSString * (^theFuncType)(NSString *);

void doSomething(theFuncType theFunc, NSString *theString)
{
    NSLog(@"doSomething: %@", theFunc(theString));
}

void doDevowelizer()
{
    NSString * (^devowelizer)(NSString *);
    
    devowelizer = ^(NSString *string) {
        NSMutableString *newString = [NSMutableString stringWithString:string];
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        for (NSString *s in vowels) {
            NSRange fullRange = NSMakeRange(0, [newString length]);
            [newString replaceOccurrencesOfString:s
                                       withString:@""
                                          options:NSCaseInsensitiveSearch
                                            range:fullRange];
        }
        
        return newString;
    }; // end of block definition
    
    NSString *myString = @"The little brown fox";
    
    NSString *devowelizedString = devowelizer(myString);
    
    NSLog(@"devowelizedString: %@", devowelizedString);
    
    doSomething(devowelizer, myString);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        doDevowelizer();
        
        [MyClass testBlocks];
    }
    return 0;
}
