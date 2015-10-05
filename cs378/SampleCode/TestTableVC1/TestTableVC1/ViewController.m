//
//  ViewController.m
//  TestTableVC1
//
//  Created by Robert Seitsinger on 4/19/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "ViewController.h"
#import "DataModel.h"

@interface ViewController ()
@property (nonatomic, strong) DataModel *dataModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create the data model; used to populate the table cells.
    self.dataModel = [DataModel new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataModel getCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Get a table cell to use
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellid" forIndexPath:indexPath];
    
    // Get a Person object to use to populate the table cell.
    Person *p = [self.dataModel getPerson:indexPath.row];

    // Set the text for the two pre-defined table cell outlets
    cell.textLabel.text = p.firstName;
    cell.detailTextLabel.text = p.lastName;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Get a Person object for the table cell the user touched.
    Person *p = [self.dataModel getPerson:indexPath.row];
    
    // Display an alert view to indicate what table cell the user touched
    NSString *message = [NSString stringWithFormat:@"You touched: %@ %@ table cell",
                         p.firstName, p.lastName];
    
    // Create and show an alert view
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"My Message"
                                                 message:message
                                                delegate:self
                                       cancelButtonTitle:@"OK"
                                       otherButtonTitles:nil];
    [av show];
}

@end
