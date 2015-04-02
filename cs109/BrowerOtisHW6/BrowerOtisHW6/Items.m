//
//  Items.m
//  BrowerOtisHW6
//
//  Created by Otis Brower on 3/4/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import "Items.h"
#import "Automobile.h"

@implementation Items

-(instancetype) init
{
    self = [super init];
    if(self){
        _autoArray = [NSMutableArray arrayWithObjects:nil count:0];
        _autoDict = [[NSMutableDictionary alloc] init];
    }
    return self;
}
-(void) addAutoToArray:(Automobile *)car
{
    [self.autoArray addObject:car];
}

-(void) addAutoToDictionary:(Automobile *)car key:(NSString *)key
{
    self.autoDict[key] = car;
}

-(void) displayArray
{
//    NSLog(@"This is working");
    for(Automobile *autos in self.autoArray){
        [autos description];
    }
}

-(void) displayDictionary
{
    for(NSString *key in self.autoDict){
    [(Automobile *)[self.autoDict objectForKey:key] description];
    }
}

@end
