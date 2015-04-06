//
//  Automobile.m
//  BrowerOtisHW6
//
//  Created by Otis Brower on 3/4/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import "Automobile.h"

@implementation Automobile

-(instancetype) init
{
    self = [super init];
    if(self){
        _make = @"";
        _model = @"";
        _doors = 0;
        _speed = 0;
    }
    return self;
}

-(void) description
{
    NSLog(@"%@ %@, %i doors, %i mph", self.make, self.model, self.doors, self.speed);
}

-(void) accelerate: (int) accel
{
    if(self.speed + accel > 160){
        self.speed = 160;
    }
    else{
        self.speed += accel;
    }
}

-(void) decelerate:(int)decel
{
    if(self.speed - decel < 0){
        self.speed = 0;
    }
    else{
        self.speed -= decel;
    }
}

+(Automobile *) createAutomobile:(NSString *)make
             createModel:(NSString *)model
             createDoors:(int)doors
{
    Automobile *car = [[Automobile alloc] init];
    
    car.make = make;
    car.model = model;
    car.doors = doors;
    
    return car;
}

@end
