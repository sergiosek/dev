//
//  ViewController.swift
//  IOSConnectfly
//
//  Created by Alumnos on 5/20/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photImamgeView: UIImageView!
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func takeAPhotoAction(_ sender: UIBarButtonItem) {
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerController.isSourceTypeAvailable(.camera) ? .camera : .photoLibrary
        present(imagePicker, animated: true)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
        photImamgeView.image = UIImage(named: "new image")
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        photImamgeView.image = info[UIImagePickerController.InfoKey.originalImage]
        as? UIImage
    }
}

extension ViewController: UINavigationControllerDelegate{
    
}
