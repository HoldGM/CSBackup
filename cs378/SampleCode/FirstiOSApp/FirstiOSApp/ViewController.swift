//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by Robert Seitsinger on 9/8/15.
//  Copyright (c) 2015 cs378. All rights reserved.
//

import UIKit

// Add UITextFieldDelegate to indicate this class conforms to that protocol
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var btnModifylabel: UIButton!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set the button text
        btnModifylabel.setTitle("Change Label Text", forState: UIControlState.Normal)
        
        // Set the text field delegate; make the delegate this object.
        inputField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAction(sender: AnyObject) {
        // The user touched the button - get rid of the keyboard.
        self.inputField.resignFirstResponder()
        
        // Update the label on the bottom with the text
        // entered in the text field.
        var newText = inputField.text
        lblMessage.text! = newText
    }

    // This method is called when the user touches the Return key on the
    // keyboard. The 'textField' passed in is a pointer to the textField
    // widget the cursor was in at the time they touched the Return key on
    // the keyboard.
    //
    // From the Apple documentation: Asks the delegate if the text field
    // should process the pressing of the return button.
    //
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when the user touches on the main view (outside the UITextField).
    //
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
}

