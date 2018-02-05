//
//  ThirdViewController.swift
//  ikid
//
//  Created by iguest on 2/5/18.
//  Copyright © 2018 iGuest. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var question: UILabel!
    var buttonPressed = false
    

    @IBAction func nexButton(_ sender: UIButton) {
        if !buttonPressed {
            answer.isHidden = false
            UIView.transition(from: question, to: answer, duration: 0.5, options: .transitionFlipFromRight, completion: nil)
            buttonPressed = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answer.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

