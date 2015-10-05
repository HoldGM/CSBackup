//
//  ViewController.m
//  FirstApp
//
//  Created by Robert Seitsinger on 4/14/15.
//  Copyright (c) 2015 Infinity Software. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

- (IBAction)buttonAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Identify our text field as the delegate for the UITextFieldDelegate protocol.
    // Setting the text field as the delegate means the textFieldShouldReturn method (below)
    // will be called when the cursor is in this field and the user touches the Return key
    // on the keyboard.
    self.myTextField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(id)sender {
    // Replace the label text with the text entered in the text field.
    self.myLabel.text = self.myTextField.text;
}

// This method is called when the user touches the Return key on the keyboard.
// The 'textField' passed in is the pointer to the textField widget the cursor
// was in at the time they touched the Return key on the keyboard.
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // We need to 'dismiss' the 'first responder' (the UI widget that has the
    // current 'focus') - which causes the keyboard to go away.
    // In our case, the 'responder' is the text field widget.
    [textField resignFirstResponder];
    
    return YES;
}

@end
