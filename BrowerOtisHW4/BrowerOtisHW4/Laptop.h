//
//  Laptop.h
//  BrowerOtisHW4
//
//  Created by Otis Brower on 3/9/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Computer.h"

@interface Laptop : Computer

@property (nonatomic) double screenSize;
@property (nonatomic) NSString *laptopType;

-(void) setScreenSize:(double) screenSize;
-(void) setLaptopeType:(NSString *)laptopType;
-(void) description;
+(Laptop *) create: (NSString *)manufacturer
         createCPU: (NSString *)cpuManufactuer
  createScreenSize: (double)screenSize
  createlaptopType: (NSString *)laptopType;
@end
