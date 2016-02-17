//
//  Person.m
//  TestTableVC1
//
//  Created by Robert Seitsinger on 4/19/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "Person.h"

@implementation Person

+(Person *)createWithFirstName:(NSString *)firstName LastName:(NSString *)lastName
{
    Person *p = [[Person alloc] init];
    p.firstName = firstName;
    p.lastName = lastName;
    return p;
}

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.firstName = @"<fname>";
        self.lastName = @"<lname>";
    }
    return self;
}

@end
