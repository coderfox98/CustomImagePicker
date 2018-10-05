//
//  ViewController.swift
//  CustomImagePicker
//
//  Created by Rishabh Raj on 05/10/18.
//  Copyright © 2018 Rishabh Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let libraryButton : UIButton = {
       let button = UIButton()
       
        button.setTitle("Library", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(handleLibraryPicker), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let picker = UIImagePickerController()
    
    @objc func handleLibraryPicker() {
        print(123)
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(picker, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red 
        
        picker.delegate = self
        view.addSubview(libraryButton)
        libraryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true 
        libraryButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        libraryButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        libraryButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // To Be Completed
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }


}

