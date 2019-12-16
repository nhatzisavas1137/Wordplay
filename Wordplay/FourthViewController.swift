//
//  FourthViewController.swift
//  Wordplay
//
//  Created by Niko Hatzisavas on 12/11/19.
//  Copyright © 2019 Niko Hatzisavas. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var mvpField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 20/255, green: 206/255, blue: 219/255, alpha: 1.0)
    }
    @IBAction func createSent(_ sender: Any) {
        let ending = mvpField.text!}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let NVC = segue.destination as! FifthViewController
        var ending = mvpField.text!
        NVC.ending1 = ending
    }
}
