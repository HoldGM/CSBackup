//
//  Automobile.h
//  BrowerOtisHW2
//
//  Created by Otis Brower on 3/9/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Automobile : NSObject

@property (nonatomic) NSString *make;
@property (nonatomic) NSString *model;
@property (nonatomic) int numberOfDoors;
@property (nonatomic) int speed;

-(instancetype) init;
-(void) accelerate: (int) accel;
-(void) decelerate: (int) decel;
-(void) description;

@end
