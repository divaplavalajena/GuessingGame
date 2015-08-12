//
//  ViewController.swift
//  GuessingGameJena
//
//  Created by Jena Grafton on 8/12/15.
//  Copyright © 2015 Bella Voce Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numOfFingersTextField: UITextField!
    
    @IBOutlet weak var guessedFingersLabel: UILabel!
    
   
    
    @IBAction func guessButton(sender: AnyObject) {
        
        let numFingers = String(arc4random_uniform(6))
        
        if numFingers == numOfFingersTextField.text {
            guessedFingersLabel.text = "You guessed right!"
            
        } else {
            guessedFingersLabel.text = "You guessed wrong! \(numFingers) is correct!"
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

