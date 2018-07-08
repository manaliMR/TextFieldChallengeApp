//
//  ViewController.swift
//  TextFieldChallengeApp
//
//  Created by Manali Rami on 2018-07-07.
//  Copyright © 2018 Manali Rami. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
   
    // Properties
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    // Outlets

    // Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField1.delegate = self.zipCodeDelegate
        self.textField2.delegate = self.cashDelegate
        self.textFiled3.delegate = self
        self.editingSwitch.setOn(false, animated: false)
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }

    @IBAction func toggleTheTextEditor(_ sender: AnyObject) {
        if !(sender as! UISwitch).isOn {
            self.textField3.resignFirstResponder()
        }
    }
}

