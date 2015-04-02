//
//  Items.h
//  BrowerOtisHW6
//
//  Created by Otis Brower on 3/4/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Automobile.h"

@interface Items : NSObject

@property (nonatomic) NSMutableArray *autoArray;
@property (nonatomic) NSMutableDictionary *autoDict;

-(instancetype) init;
-(void) addAutoToArray: (Automobile *)car;
-(void) addAutoToDictionary: (Automobile *)car
                        key: (NSString *)key;
-(void) displayArray;
-(void) displayDictionary;

@end
