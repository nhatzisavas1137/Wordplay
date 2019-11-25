//
//  ViewController.swift
//  Wordplay
//
//  Created by Niko Hatzisavas on 11/11/19.
//  Copyright © 2019 Niko Hatzisavas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIApplicationDelegate {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var button1: UIButton!
    var adjective1 = "(adjective)"
    var verb1 = "(verb)"
    var noun1 = "(noun)"
    var check = false
    override func viewDidLoad() {
        super.viewDidLoad()
        let sentenceBeginning: String = "My " + adjective1 + " " + noun1 + " wants to " + verb1
        button1.setTitle("Create Sentence", for: .normal)
        textField1.placeholder = "Type Adjective"
        label1.text = sentenceBeginning
        view.backgroundColor = .init(red: 20/255, green: 206/255, blue: 219/255, alpha: 1.0)
        textField2.placeholder = "Type Noun"
        textField3.placeholder = "Type Verb"
        textField4.placeholder = "Look For Word"
    }
    @IBAction func button1Pressed(_ sender: Any) {
        check = true
        performSegue(withIdentifier: "segue1", sender: self)
    }
    @IBAction func button2Pressed(_ sender: Any) {
        check = false
        performSegue(withIdentifier: "segue2", sender: self)
    }
    override func prepare(for segue1: UIStoryboardSegue, sender: Any?) {
        let adjective1 = textField1.text!
        let verb1 = textField3.text!
        let noun1 = textField2.text!
        let wordLookFor1 = textField4.text!
        let sentenceBeginning: String = "My " + adjective1 + " " + noun1 + " wants to " + verb1
        if check == true {let NVC = segue1.destination as! SecondViewController
            NVC.adjective2 = adjective1
            NVC.verb2 = verb1
            NVC.noun2 = noun1
            NVC.wordLookFor2 = wordLookFor1
            NVC.beginning = sentenceBeginning}
        if check == false {let NVC = segue1.destination as! ThirdViewController
            NVC.adjective2 = adjective1
            NVC.verb2 = verb1
            NVC.noun2 = noun1
            NVC.beginning = sentenceBeginning
        }
    }
}
