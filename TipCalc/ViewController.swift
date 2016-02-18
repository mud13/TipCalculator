//
//  ViewController.swift
//  TipCalc
//
//  Created by Mudit Mittal on 2/13/16.
//  Copyright © 2016 Mudit Mittal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainTextField: UITextField!
    @IBOutlet weak var twentyPercentTipLabel: UILabel!
    @IBOutlet weak var tenPercentTipLabel: UILabel!
    @IBOutlet weak var fifteenPercentTipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calculatePressed(sender: AnyObject) {
        let amount = Double(mainTextField.text!)!
        let tenPercentOfAmount = Double(round(100 * (amount * 0.1))/100)
        let fifteenPercentOfAmount = Double(round(100 * (amount * 0.15))/100)
        let twentyPercentOfAmount = Double(round(100 * (amount * 0.20))/100)
        tenPercentTipLabel.text = String(tenPercentOfAmount)
        fifteenPercentTipLabel.text = String(fifteenPercentOfAmount)
        twentyPercentTipLabel.text = String(twentyPercentOfAmount)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

