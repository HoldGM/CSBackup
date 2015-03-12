//
//  Computer.m
//  BrowerOtisHW4
//
//  Created by Otis Brower on 3/9/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import "Computer.h"

@implementation Computer

-(instancetype) init
{
    return [self initComputer:@"" createCPU:@""];
}

-(instancetype) initComputer:(NSString *)computerManufactuer
                   createCPU:(NSString *)cpuManufacturer
{
    self = [super init];
    if(self){
        _computerManufacturer = computerManufactuer;
        _cpuManufacturer = cpuManufacturer;
    }
    return self;
}

+(Computer *) create:(NSString *)computerManufacturer
           createCPU:(NSString *)cpuManufactuer
{
    Computer *computer1 = [[Computer alloc] init];
    computer1.computerManufacturer = computerManufacturer;
    computer1.cpuManufacturer = cpuManufactuer;
    
    return computer1;
}

-(void) description
{
    NSLog(@"Computer Manufacturer: %@", self.computerManufacturer);
    NSLog(@"CPU Manufactuer: %@", self.cpuManufacturer);
}
@end
