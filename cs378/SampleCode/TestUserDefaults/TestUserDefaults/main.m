//
//  main.m
//  TestUserDefaults
//
//  Created by Robert Seitsinger on 4/14/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Keys for the values to store
        static NSString *kUserIdKey = @"userId";
        static NSString *kTotalKey = @"total";
        static NSString *kNameKey = @"name";

        // Values to store
        NSInteger userId = 900;
        float total = 1275.55;
        NSString *name = @"University of Texas";

        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        // Saving an integer
        [defaults setInteger:userId forKey:kUserIdKey];
        // Saving a Float
        [defaults setFloat:total forKey:kTotalKey];
        // Saving an NSString
        [defaults setObject:name forKey:kNameKey];
        
        [defaults synchronize]; // forces the write to the device
        
        
        // Retrieve the previously stored values
        NSInteger retrievedUserId = [[NSUserDefaults standardUserDefaults] integerForKey:kUserIdKey];
        float retrievedTotal = [[NSUserDefaults standardUserDefaults] floatForKey:kTotalKey];
        NSString *retrievedName = [[NSUserDefaults standardUserDefaults] objectForKey:kNameKey];
        
        NSLog(@"UserId: %ld", retrievedUserId);
        NSLog(@"Total: %f", retrievedTotal);
        NSLog(@"Name: %@", retrievedName);
    }
    return 0;
}
