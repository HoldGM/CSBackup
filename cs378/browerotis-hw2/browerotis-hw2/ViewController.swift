//
//  ViewController.swift
//  browerotis-hw2
//
//  Created by Otis Brower on 9/14/15.
//  Copyright (c) 2015 cs378. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var nameCityLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameCityLbl.text = ""
        nameText.delegate = self
        cityText.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    btnSaveClicked - saves nametext and cityText, displays concatinated output
    @IBAction func btnSaveClicked(sender: AnyObject) {
        self.nameText.resignFirstResponder()
        self.cityText.resignFirstResponder()
        
        if nameText.text == "" || cityText.text == ""{
            nameCityLbl.text = "You must enter a value for *both* name and city"
        }else{
            nameCityLbl.text! = nameText.text + " - " + cityText.text
        }

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true;
    }
    
    // called when user touches on the main view
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    

}

