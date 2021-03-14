//
//  ViewController.swift
//  CardiFlash
//
//  Created by Ponette Rubio on 2/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBOutlet weak var front_label: UILabel!
    @IBOutlet weak var back_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        front_label.isHidden = true
    }
    @IBAction func tap(_ sender: Any) {
        //
        front_label.isHidden = true
    }
    
    func updateFlashcard(question: String, answer: String) {
        // Do stuff here
        //based on office hrs
        front_label.text = question
        back_label.text = answer
        //backLabel.text = answer
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //we know the destination of the segue is the Navigation controller
        
        let navigationController = segue.destination as! UINavigationController
        
        // we know that navigation controller only contins a creation view controller
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        //we set the flashcardscontroller to self
        creationController.flashcardsController = self
    }
    
}

