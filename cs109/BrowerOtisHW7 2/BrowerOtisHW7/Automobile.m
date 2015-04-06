//
//  Automobile.m
//  BrowerOtisHW7
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
        [self addObserver:self forKeyPath:@"speed" options: NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld   context: nil];
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


-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context
{
    if([keyPath isEqualToString:@"speed"]){
        NSString *old = [change objectForKey:NSKeyValueChangeOldKey];
        NSString *new = [change objectForKey:NSKeyValueChangeNewKey];
        NSLog(@"Observed: %@ %@ %@ was changed from %@ to %@", self.make, self.model, keyPath, old, new);
    }
    
}

-(void)dealloc
{
    [self removeObserver:self forKeyPath:@"speed"];
}

@end
