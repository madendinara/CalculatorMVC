//
//  ViewController.swift
//  Calculator
//
//  Created by Dinara on 9/30/19.
//  Copyright © 2019 Dinara Sadykova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resLab: UILabel!
    var calculation = CalculationController()
    @IBAction func digits(_ sender: UIButton) {
        print(sender.tag)
        resLab.text = calculation.displayDigits(buttonText: sender.tag, displayText: resLab.text!)

       
    
    }
    @IBAction func modifiers(_ sender: UIButton) {
        print(sender.tag)
        resLab.text = calculation.calculateAction(buttonText: sender.tag, displayText: resLab.text!)
    }
    @IBAction func clearButton(_ sender: UIButton) {
        calculation.clear()
        resLab.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

