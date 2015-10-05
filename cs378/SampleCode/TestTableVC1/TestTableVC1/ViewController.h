//
//  ViewController.h
//  TestTableVC1
//
//  Created by Robert Seitsinger on 4/19/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import <UIKit/UIKit.h>

// Modified to derive from UITableViewController instead of UiViewController.
// Added the UITableViewDataSource and UITableViewDelegate protocols.
@interface ViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@end

