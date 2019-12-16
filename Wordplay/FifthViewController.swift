//
//  FifthViewController.swift
//  Wordplay
//
//  Created by Niko Hatzisavas on 12/11/19.
//  Copyright © 2019 Niko Hatzisavas. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    var ending1:String! = nil
    @IBOutlet weak var MVPSentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 20/255, green: 206/255, blue: 219/255, alpha: 1.0)
        MVPSentLabel.text! += " " + ending1 + "."
    }
}
