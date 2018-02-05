//
//  FourthViewController.swift
//  ikid
//
//  Created by iguest on 2/5/18.
//  Copyright © 2018 iGuest. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var fifth: UILabel!
    @IBOutlet weak var fourth: UILabel!
    @IBOutlet weak var third: UILabel!
    @IBOutlet weak var second: UILabel!
    @IBOutlet weak var first: UILabel!
    var pageCount = 1

    @IBAction func nextButton(_ sender: UIButton) {
        if pageCount == 1 {
            second.isHidden = false
            UIView.transition(from: first, to: second, duration: 0.5, options: .transitionFlipFromRight, completion: nil)
        } else if pageCount == 2 {
            third.isHidden = false
            UIView.transition(from: second, to: third, duration: 0.5, options: .transitionFlipFromRight, completion: nil)
        } else if pageCount == 3 {
            fourth.isHidden = false
            UIView.transition(from: third, to: fourth, duration: 0.5, options: .transitionFlipFromRight, completion: nil)
        } else if pageCount == 4 {
            fifth.isHidden = false
            UIView.transition(from: fourth, to: fifth, duration: 0.5, options: .transitionFlipFromRight, completion: nil)
        }
        
        pageCount = pageCount + 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        second.isHidden = true
        third.isHidden = true
        fourth.isHidden = true
        fifth.isHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
