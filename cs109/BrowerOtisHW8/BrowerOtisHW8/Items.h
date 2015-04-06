//
//  Items.h
//  BrowerOtisHW7
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
-(void) itemAddedToArray:(NSNotification *)notification;
-(void) itemAddedToDictionay:(NSNotification *)notification;
-(void) dealloc;

@end
