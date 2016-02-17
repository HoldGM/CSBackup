//
//  NSString+SpecialConcats.m
//  TestCategories
//
//  Created by Robert Seitsinger on 4/7/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "NSString+SpecialConcats.h"

@implementation NSString (SpecialConcats)

-(NSString *)extractPartAt:(NSUInteger)startPosition For:(NSUInteger)length
{
    NSRange range = NSMakeRange(startPosition, length);
    
    // Since this category 'is-a' NSString, we use the substringWithRange
    // NSString method to extract a portion of the string.
    return [self substringWithRange:range];
}

@end
