//
//  main.m
//  BrowerOtisHW4
//
//  Created by Otis Brower on 3/9/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Computer.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Computer *computer1;
        
        computer1 = [Computer create: @"Asus" createCPU:@"Intel"];
        [computer1 description];
        
    }
    return 0;
}
