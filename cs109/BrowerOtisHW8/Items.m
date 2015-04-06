//
//  Items.m
//  BrowerOtisHW7
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
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(itemAddedToArray:) name:@"addedArray" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(itemAddedToDictionay:) name:@"addedDictionary" object:nil];
        _autoArray = [NSMutableArray arrayWithObjects:nil count:0];
        _autoDict = [[NSMutableDictionary alloc] init];
    }
    return self;
}
-(void) addAutoToArray:(Automobile *)car
{
    [self.autoArray addObject:car];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"addedArray" object:nil];
}

-(void) addAutoToDictionary:(Automobile *)car key:(NSString *)key
{
    self.autoDict[key] = car;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"addedDictionary" object:nil];
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

-(void) itemAddedToArray:(NSNotification *)notification
{
    NSLog(@"An Item was added to array.");
}

-(void) itemAddedToDictionay:(NSNotification *)notification
{
    NSLog(@"An Item was added to dictionay.");
}

-(void) dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"addedArray" object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"addedDictionary" object:nil];
}

@end
