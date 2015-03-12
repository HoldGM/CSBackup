//
//  Automobile.m
//  BrowerOtisHW2
//
//  Created by Otis Brower on 3/9/15.
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
        _numberOfDoors = 0;
        _speed = 0;
    }
    
    return self;
}

-(void) accelerate:(int)accel
{
    if(self.speed + accel > 160){
        self.speed = 160;
    }else{
        self.speed += accel;
    }
}

-(void) decelerate:(int)decel
{
    if(self.speed - decel < 0){
        self.speed = 0;
    }else{
        self.speed -= decel;
    }
}

-(void) description;
{
    NSLog(@"Make: %@", self.make);
    NSLog(@"Model: %@", self.model);
    NSLog(@"Number of Doors: %d", self.numberOfDoors);
    NSLog(@"Speed: %d", self.speed);
}

@end
