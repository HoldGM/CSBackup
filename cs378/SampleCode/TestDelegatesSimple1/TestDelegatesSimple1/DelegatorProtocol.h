//
//  DelegatorProtocol.h
//  TestDelegatesSimple1
//
//  Created by Robert Seitsinger on 3/31/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

@protocol DelegatorProtocol <NSObject>
@required
// list of required methods and properties
-(void)printMeRequired;

@property (nonatomic, strong) NSString *requiredProperty;

@end
