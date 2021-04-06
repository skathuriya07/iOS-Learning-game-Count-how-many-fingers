//
//  ViewController.swift
//  Guess How Many Fingers
//
//  Created by Shreya Kathuriya on 06/04/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var guessTextField: UITextField!
    
    
    @IBAction func guessButton(_ sender: Any) {
        let userGuess = Int(guessTextField.text!)!
        let returnString = checkGuess(userInput: userGuess)
        responseLabel.text = returnString
    
    }
    
    func checkGuess(userInput: Int) -> String{
        let randomNumber = arc4random_uniform(11)

        if userInput == randomNumber{
            return "Correct Guess"
        }
        else{
            return "Wrong, I am holding \(randomNumber) fingers!"
        }

    }
    
    @IBOutlet weak var responseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

