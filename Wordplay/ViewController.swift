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
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.setTitle("Create sentence", for: .normal)
        textField1.placeholder = "Type sententence ending"
        label1.text = "My uncle wants to go to the..."
        let sentenceEnding = textField1.text!
    }


}
