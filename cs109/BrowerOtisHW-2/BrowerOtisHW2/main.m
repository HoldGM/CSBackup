//
//  main.m
//  BrowerOtisHW2
//
//  Created by Otis Brower on 3/9/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Automobile.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Create an auotmobile object named car1
        Automobile *car1;
        
        car1 = [[Automobile alloc] init];
        car1.make = @"Maserati";
        car1.model = @"Grand Turismo";
        car1.numberOfDoors = 2;
        
        [car1 description];
    }
    return 0;
}
