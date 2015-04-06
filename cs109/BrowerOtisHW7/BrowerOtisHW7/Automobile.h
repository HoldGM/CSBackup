//
//  Automobile.h
//  BrowerOtisHW7
//
//  Created by Otis Brower on 3/4/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Automobile : NSObject

@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) NSString *model;
@property (nonatomic) int doors;
@property (nonatomic) int speed;

-(instancetype) init;
-(void) description;
-(void) accelerate: (int) accel;
-(void) decelerate: (int) decel;
+(Automobile *) createAutomobile: (NSString *)make
             createModel: (NSString *)model
             createDoors: (int) doors;
-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object change:(NSDictionary *)change
                      context:(void *)context;
-(void)dealloc;
@end
