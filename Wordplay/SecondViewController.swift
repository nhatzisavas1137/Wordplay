//
//  SecondViewController.swift
//  Wordplay
//
//  Created by Niko Hatzisavas on 11/12/19.
//  Copyright © 2019 Niko Hatzisavas. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {
    var ending: String! = nil
    var beginning: String! = nil
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 20/255, green: 206/255, blue: 219/255, alpha: 1.0)
        label2.text = beginning + ending
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
