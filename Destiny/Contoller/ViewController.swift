//
//  ViewController.swift
//  Destiny
//
//  Created by Sai Reddy on 30/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    var brain = Brain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let buttonChoice = sender.currentTitle!
        
        brain.next_question(u: buttonChoice)
        updateUI()
        
//        questionNumber += 1
    }
    
    func updateUI(){
        questionLabel.text = brain.get_question()
        option1.setTitle(brain.get_choice1(), for: .normal)
        option2.setTitle(brain.get_choice2(), for: .normal)
    }
    
}

