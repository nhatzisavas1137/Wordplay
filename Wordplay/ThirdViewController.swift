//
//  ThirdViewController.swift
//  Wordplay
//
//  Created by Niko Hatzisavas on 11/20/19.
//  Copyright © 2019 Niko Hatzisavas. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var verb2: String! = nil
    var adjective2: String! = nil
    var noun2: String! = nil
    var beginning: String! = nil
    let action1 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in}
    @IBOutlet weak var lookForField: UITextField!
    @IBOutlet weak var replaceWithField: UITextField!
    @IBOutlet weak var labelView3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 20/255, green: 206/255, blue: 219/255, alpha: 1.0)
        if verb2 == "" || adjective2 == "" || noun2 == "" {
            beginning = "This sentence is a placeholder. Please fill out the fields on the home page to change this."
            labelView3.text = beginning
        }
        else {
            labelView3.text = beginning
        }
        let loadAlert = UIAlertController(title: "Welcome", message: "Please note that these fields are case sensitive!", preferredStyle: .alert)
        loadAlert.addAction(action1)
        self.present(loadAlert, animated: true, completion: nil)
    }
    @IBAction func findButtonPressed(_ sender: Any) {
        let labelText = labelView3.text!
        if lookForField.text! != "" {
            let lookFor = lookForField.text!
            if labelText.contains(lookFor) == false && lookFor != "" {
                let findWordAlert = UIAlertController(title: "Word Not Found", message: "Your word was not found in the sentence 😭", preferredStyle: .alert)
                findWordAlert.addAction(action1)
                self.present(findWordAlert, animated: true, completion: nil)
            }
            if labelText.contains(lookFor) == true {
                let findWordAlert = UIAlertController(title: "Word Found!", message: "Your word was found in the sentence! 😄", preferredStyle: .alert)
                findWordAlert.addAction(action1)
                self.present(findWordAlert, animated: true, completion: nil)
            }
            if lookFor == "" {
                return
            }
        }
    }
    @IBAction func replaceButtonPressed(_ sender: Any) {
        if lookForField.text != "" || replaceWithField.text != "" {
            let lookFor = lookForField.text!
            let replaceWith = replaceWithField.text!
            if beginning.contains(lookFor) == true {
                let replacedString = beginning.replacingOccurrences(of: lookFor, with: replaceWith)
                beginning = replacedString
                labelView3.text = beginning
                return
            }
            if beginning.contains(lookFor) != true {
                let errorAlert = UIAlertController(title: "Error", message: "The word you entered cannot be found in the sentence 😭", preferredStyle: .alert)
                errorAlert.addAction(action1)
                self.present(errorAlert, animated: true, completion: nil)
            }
        }
    }
}
