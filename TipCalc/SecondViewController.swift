//
//  SecondViewController.swift
//  TipCalc
//
//  Created by Mudit Mittal on 2/16/16.
//  Copyright © 2016 Mudit Mittal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mainTextField: UITextField!
    @IBOutlet weak var customerService: UISlider!
    @IBOutlet weak var customerServiceLabel: UILabel!
    @IBOutlet weak var foodQuality: UISlider!
    @IBOutlet weak var foodQualityLabel: UILabel!
    @IBOutlet weak var waitTime: UISlider!
    @IBOutlet weak var waitTimeLabel: UILabel!
    @IBOutlet weak var ambiance: UISlider!
    @IBOutlet weak var ambianceLabel: UILabel!
    @IBOutlet weak var customPercent: UITextField!
    @IBOutlet weak var customTip: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func serviceValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value)
        customerServiceLabel.text = String(currentValue)
    }
    @IBAction func foodValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value)
        foodQualityLabel.text = String(currentValue)
    }
    @IBAction func waitValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value)
        waitTimeLabel.text = String(currentValue)
    }
    @IBAction func ambianceValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value)
        ambianceLabel.text = String(currentValue)
    }
    @IBAction func calculateCustomTip(sender: AnyObject) {
        let amount = Double(mainTextField.text!)!
        let calcCustomerService = Double(customerServiceLabel.text!)! * 0.5
        let calcFoodQuality = Double(foodQualityLabel.text!)! * 0.3
        let calcWaitTime = Double(waitTimeLabel.text!)!  * 0.1
        let calcAmbiance = Double(ambianceLabel.text!)! * 0.1
        let averageRating = (calcCustomerService + calcFoodQuality + calcWaitTime + calcAmbiance) / 5
        let roundedAverage = Double(round(10 * averageRating)/10)
        let finalPercent = 10.0 * (roundedAverage + 1.0)
        let finalAmount = amount * (finalPercent / 100)
        let roundedFinalAmount = Double(round(100 * finalAmount)/100)
        customPercent.text = String(finalPercent) + "%"
        customTip.text = String(roundedFinalAmount)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
