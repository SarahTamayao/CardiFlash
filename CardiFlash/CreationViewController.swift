//
//  CreationViewController.swift
//  CardiFlash
//
//  Created by Ponette Rubio on 3/13/21.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController! // added from lab instructions

   
    @IBAction func didTapDone(_ sender: Any) {
        //get the text in the question text field
        let questionText = questionTextField.text
        
        //get the text in the answer text field
        let answerText = answerTextField.text
        
        //call the function to update the flashcard
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        
        //dismiss
        dismiss(animated: true)
        
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: false)
    }
    //connecting question and answer fields to IB outlets
    @IBOutlet weak var questionTextField: UITextField!
    
    
    @IBOutlet weak var answerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
