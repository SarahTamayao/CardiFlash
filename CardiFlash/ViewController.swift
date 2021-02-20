//
//  ViewController.swift
//  CardiFlash
//
//  Created by Ponette Rubio on 2/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var front_label: UILabel!
    @IBOutlet weak var back_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        front_label.isHidden = true
    }

    @IBAction func did_tap_on_flashcard(_ sender: Any) {
        //
        front_label.isHidden = true
    }
    
}

