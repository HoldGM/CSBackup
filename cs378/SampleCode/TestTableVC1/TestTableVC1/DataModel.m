//
//  DataModel.m
//  TestTableVC1
//
//  Created by Robert Seitsinger on 4/19/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "DataModel.h"

@interface DataModel ()
@property (nonatomic, strong) NSArray *data;

@end

@implementation DataModel

-(instancetype)init
{
    self = [super init];
    if (self) {
        Person *p1 = [Person createWithFirstName:@"Joe" LastName:@"Smith"];
        Person *p2 = [Person createWithFirstName:@"Mark" LastName:@"Johnson"];
        Person *p3 = [Person createWithFirstName:@"Marla" LastName:@"Benning"];
        
        self.data = [NSArray arrayWithObjects:p1, p2, p3, nil];
    }
    return self;
}

-(NSInteger)getCount
{
    return [self.data count];
}

-(Person *)getPerson:(NSInteger)index
{
    if (index < [self.data count]) {
        return [self.data objectAtIndex:index];
    } else {
        return [Person new];
    }
}

@end
