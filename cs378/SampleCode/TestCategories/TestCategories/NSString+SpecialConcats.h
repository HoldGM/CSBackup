//
//  NSString+SpecialConcats.h
//  TestCategories
//
//  Created by Robert Seitsinger on 4/7/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SpecialConcats)
-(NSString *)extractPartAt:(NSUInteger)startPosition For:(NSUInteger)length;

@end
