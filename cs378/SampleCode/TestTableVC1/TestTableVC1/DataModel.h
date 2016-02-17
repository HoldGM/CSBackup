//
//  DataModel.h
//  TestTableVC1
//
//  Created by Robert Seitsinger on 4/19/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface DataModel : NSObject
-(NSInteger)getCount;
-(Person *)getPerson:(NSInteger)index;

@end
