//
//  SecondViewController.swift
//  ikid
//
//  Created by iguest on 2/5/18.
//  Copyright © 2018 iGuest. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var secondPic: UIImageView!
    @IBOutlet weak var firstPic: UIImageView!
    var buttonPressed = false
    
    @IBAction func nextButton(_ sender: UIButton) {
        if !buttonPressed {
            secondPic.isHidden = false
            UIView.transition(from: firstPic, to: secondPic, duration: 0.5, options: .transitionFlipFromRight, completion: nil)
            buttonPressed = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondPic.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

