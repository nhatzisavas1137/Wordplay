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
        if beginning.contains(wordLookFor2) {
            let findWordAlert = UIAlertController(title: "Word Found!", message: "Your word was found in the sentence! 😄", preferredStyle: .alert)
            findWordAlert.addAction(action1)
            self.present(findWordAlert, animated: true, completion: nil)
        }
        else {
            let findWordAlert = UIAlertController(title: "Word Not Found", message: "Your word was not found in the sentence 😭", preferredStyle: .alert)
            findWordAlert.addAction(action1)
            self.present(findWordAlert, animated: true, completion: nil)
        }
    }
}
