//
//  Computer.h
//  BrowerOtisHW4
//
//  Created by Otis Brower on 3/9/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Computer : NSObject

@property (nonatomic) NSString *computerManufacturer;
@property (nonatomic) NSString *cpuManufacturer;

-(instancetype) init;
-(instancetype) initComputer: (NSString *)computerManufactuer createCPU: (NSString *)cpuManufacturer;
+(Computer *) create: (NSString *) computerManufacturer createCPU: (NSString *)cpuManufactuer;
-(void) description;

@end
