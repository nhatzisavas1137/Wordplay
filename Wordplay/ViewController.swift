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
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var button1: UIButton!
    var sentenceBeginning: String = "My uncle wants to go to the "
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.setTitle("Create sentence", for: .normal)
        textField1.placeholder = "Type sententence ending"
        label1.text = sentenceBeginning + "..."
        view.backgroundColor = .init(red: 20/255, green: 206/255, blue: 219/255, alpha: 1.0)
    }
    @IBAction func button1Pressed(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sentenceEnding = textField1.text!
        let sentenceBeginning: String = "My uncle wants to go to the "
        let NVC = segue.destination as! SecondViewController
        NVC.ending = sentenceEnding
        NVC.beginning = sentenceBeginning
    }
}
