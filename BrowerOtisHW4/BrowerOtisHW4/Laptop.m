//
//  Laptop.m
//  BrowerOtisHW4
//
//  Created by Otis Brower on 3/9/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import "Laptop.h"

@implementation Laptop

-(void) setScreenSize:(double)screenSize
{
    self.screenSize = screenSize;
}

-(void) setLaptopeType:(NSString *)laptopType
{
    self.laptopType = laptopType;
}

-(void) description
{
    NSLog(@"Manufactuer: %@", self.computerManufacturer);
    NSLog(@"CPU Manufactuer: %@", self.cpuManufacturer);
    NSLog(@"Laptop Type: %@", self.laptopType);
    NSLog(@"Screen Size: %2.1f\"", self.screenSize);
}

+(Laptop *) create:(NSString *)manufacturer
         createCPU:(NSString *)cpuManufactuer
  createScreenSize:(double)screenSize
  createlaptopType:(NSString *)laptopType
{
    Laptop *laptop = [[Laptop alloc] initComputer:manufacturer createCPU:cpuManufactuer];
    laptop.screenSize = screenSize;
    laptop.laptopType = laptopType;
    
    return laptop;
}



@end
