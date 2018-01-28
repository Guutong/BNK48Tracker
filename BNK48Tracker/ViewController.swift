//
//  ViewController.swift
//  BNK48Tracker
//
//  Created by Pornmongkon Pongsai on 28/1/2561 BE.
//  Copyright © 2561 Pornmongkon Pongsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    // MARK: - Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    
    // MARK: - ViewController func
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.delegate = self
        self.photoImageView.isUserInteractionEnabled = true
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
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated:  true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        self.photoImageView.image = selectedImage
          dismiss(animated:  true, completion: nil)
    }
    
    // MARK: - Actions
    @IBAction func setLabel(_ sender: Any) {
        self.nameLabel.text = self.nameTextField.text
    }
    
    @IBAction func setImageFromLibrary(_ sender: Any) {
        self.nameTextField.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        self.present(imagePickerController,animated: true, completion: nil)
    }
}

