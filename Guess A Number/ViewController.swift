//
//  ViewController.swift
//  Guess A Number
//
//  Created by Priom on 2015-09-18.
//  Copyright © 2015 Priom.net. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inNum: UITextField!
    @IBOutlet var prntRslt: UILabel!

    @IBAction func guessBtn(sender: AnyObject) {
        let randomNum = String(arc4random_uniform(1001))

        if (inNum.text == "") {
            prntRslt.text = "Please enter a number!"
        }
        else if (randomNum == inNum.text) {
            prntRslt.text = "Exellent! You are right"
        }
        else {
            prntRslt.text = "Sorry, better luck next time, the right number is " + randomNum
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

