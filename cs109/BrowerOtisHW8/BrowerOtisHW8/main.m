//
//  main.m
//  BrowerOtisHW7
//
//  Created by Otis Brower on 3/3/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Automobile.h"
#import "Items.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Items *list = [[Items alloc] init];
        Automobile *car1;
        Automobile *car2;
        Automobile *car3;
        
        car1 = [Automobile createAutomobile: @"Ford" createModel: @"Fusion" createDoors:4];
        car2 = [Automobile createAutomobile:@"Maserati" createModel:@"Quatrroporte" createDoors:4];
        car3 = [Automobile createAutomobile:@"Ferarri" createModel:@"F430" createDoors:2];
//        Add cars to array
        [list addAutoToArray:car1];
        [list addAutoToArray:car2];
        [list addAutoToArray:car3];
//        Add cars to dictionary
        [list addAutoToDictionary:car1 key:car1.model];
        [list addAutoToDictionary:car2 key:car2.model];
        [list addAutoToDictionary:car3 key:car3.model];
        
        [list displayArray];
        NSLog(@"\n");
        [list displayDictionary];
        
        [car1 accelerate:12];
        [car2 accelerate:14];
        [car3 accelerate:16];
        
        
    }
    return 0;
}
