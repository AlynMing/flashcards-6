//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Jordan Lawanson on 3/5/20.
//  Copyright © 2020 Jordan Lawanson. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionTextField.text = initialQuestion
        answerTwoTextField.text = initialAnswer
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }

    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerOneTextField: UITextField!
    @IBOutlet weak var answerTwoTextField: UITextField!
    @IBOutlet weak var answerThreeTextField: UITextField!
    
    
    var initialQuestion: String?
    var initialAnswer: String?
    
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerOneText = answerOneTextField.text
        let answerTwoText = answerTwoTextField.text
        let answerThreeText = answerThreeTextField.text
        
        if questionText == nil || answerOneText == nil || answerTwoText == nil || answerThreeText == nil || questionText!.isEmpty || answerOneText!.isEmpty || answerTwoText!.isEmpty || answerThreeText!.isEmpty {
            let alert = UIAlertController (title: "Missing text", message: "You need to enter both a question and an answer", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            
            alert.addAction(okAction)
            present(alert, animated: true)
        } else {
            flashcardsController.updateFlashcard(question: questionText!, answerOne: answerOneText!, answerTwo: answerTwoText!, answerThree: answerThreeText!)
            dismiss(animated: true)
        }
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
