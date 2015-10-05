//
//  Person.h
//  TestTableVC1
//
//  Created by Robert Seitsinger on 4/19/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;

+(Person *)createWithFirstName:(NSString *)firstName LastName:(NSString *)lastName;

@end
