//
//  SecondViewController.swift
//  Wordplay
//
//  Created by Niko Hatzisavas on 11/12/19.
//  Copyright © 2019 Niko Hatzisavas. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {
    var verb2: String! = nil
    var adjective2: String! = nil
    var noun2: String! = nil
    var beginning: String! = nil
    var wordLookFor2: String! = nil
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 20/255, green: 206/255, blue: 219/255, alpha: 1.0)
        label2.text = beginning
        let action1 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in}
        if verb2 == "" || adjective2 == "" || noun2 == "" || verb2 == " " || adjective2 == " " || noun2 == " " {
            let errorAlert = UIAlertController(title: "Error", message: "Please enter text into all fields", preferredStyle: .alert)
            errorAlert.addAction(action1)
            label2.text = "ERROR"
            self.present(errorAlert, animated: true, completion: nil)
            return
        }
        if beginning.contains(wordLookFor2) == false && wordLookFor2 != "" {
            let findWordAlert = UIAlertController(title: "Word Not Found", message: "Your word was not found in the sentence 😭", preferredStyle: .alert)
            findWordAlert.addAction(action1)
            self.present(findWordAlert, animated: true, completion: nil)
        }
        if beginning.contains(wordLookFor2) == true {
            let findWordAlert = UIAlertController(title: "Word Found!", message: "Your word was found in the sentence! 😄", preferredStyle: .alert)
            findWordAlert.addAction(action1)
            self.present(findWordAlert, animated: true, completion: nil)
        }
        if wordLookFor2 == " " || wordLookFor2 == "" {
            return
        }
    }
}
