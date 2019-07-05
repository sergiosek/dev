//
//  SampleViewController.swift
//  UISample
//
//  Created by Alumnos on 5/18/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sayHelloAction(_ sender: UIButton) {
        textLabel.text = "\(firstNameTextField.text ?? "No name")\(lastNameTextField.text ?? "No last name")"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
