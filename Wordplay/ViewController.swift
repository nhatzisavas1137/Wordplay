//
//  ViewController.swift
//  Wordplay
//
//  Created by Niko Hatzisavas on 11/11/19.
//  Copyright © 2019 Niko Hatzisavas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var button1: UIButton!
    var adjective1 = "(adjective)"
    var verb1 = "(verb)"
    var noun1 = "(noun)"
    override func viewDidLoad() {
        super.viewDidLoad()
        let sentenceBeginning: String = "My " + adjective1 + " " + noun1 + " wants to " + verb1
        button1.setTitle("Create sentence", for: .normal)
        textField1.placeholder = "Type adjective"
        label1.text = sentenceBeginning
        view.backgroundColor = .init(red: 20/255, green: 206/255, blue: 219/255, alpha: 1.0)
        textField2.placeholder = "Type noun"
        textField3.placeholder = "Type verb"
    }
    @IBAction func button1Pressed(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let adjective1 = textField1.text!
        let verb1 = textField3.text!
        let noun1 = textField2.text!
        let sentenceBeginning: String = "My " + adjective1 + " " + noun1 + " wants to " + verb1
        let NVC = segue.destination as! SecondViewController
        NVC.adjective2 = adjective1
        NVC.verb2 = verb1
        NVC.noun2 = noun1
        NVC.beginning = sentenceBeginning
    }
}
