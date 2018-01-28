//
//  ViewController.swift
//  BNK48Tracker
//
//  Created by Pornmongkon Pongsai on 28/1/2561 BE.
//  Copyright © 2561 Pornmongkon Pongsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    // MARK: - Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    // MARK: - ViewController func
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.delegate = self
    }
    
    // MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide keyboard
        self.nameTextField.resignFirstResponder()
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.nameLabel.text = textField.text
    }
    
    // MARK: - Actions
    @IBAction func setLabel(_ sender: Any) {
        self.nameLabel.text = self.nameTextField.text
    }
    @IBAction func setImageFromLibrary(_ sender: Any) {
    }
}

