//
//  ViewController.swift
//  Homework21
//
//  Created by Борис Киселев on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {
  
    var password: String = ""
    
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBAction func generatePass(_ sender: Any) {
        password = String(String().lowercase.randomElement()!) + String(String().digits.randomElement()!) + String(String().uppercase.randomElement()!) + String(String().punctuation.randomElement()!)
        
        activityIndicator.isHidden = true
        textField.isSecureTextEntry = true
        textField.text = password
        firstLabel.text = "What's the password?"
        print(password)
    }
    
    let queue = DispatchQueue(label: "myQueue", qos: .default)
    
    @IBAction func serachPass(_ sender: Any) {
        DispatchQueue.main.async {
            self.activityIndicator.isHidden = false
        }
        
        queue.async { [self] in
            self.bruteForce(passwordToUnlock: self.password)
            self.firstLabel.text = self.password
            self.textField.isSecureTextEntry = false
            self.activityIndicator.isHidden = true
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        firstLabel.text = "What's the password?"
        activityIndicator.isHidden = true
    }
    
    func bruteForce(passwordToUnlock: String) {
        let ALLOWED_CHARACTERS:   [String] = String().printable.map { String($0) }
        var password: String = ""

        while password != passwordToUnlock {
            password = generateBruteForce(password, fromArray: ALLOWED_CHARACTERS)
            print(password)
        }
        print(password)
    }
}


