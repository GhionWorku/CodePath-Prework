//
//  ViewController.swift
//  Prework
//
//  Created by Ghion Worku on 7/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Set the title in the Nav Bar of Calculator
        self.title = "Tip Calculator"
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get initial bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get total tip by multiplying tip and tipPercentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update the Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

