//
//  ViewController.swift
//  Storyboards
//
//  Created by Nick Otwani on 8/7/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipPercent: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipP = Double(tipSlider.value)
        tipPercent.text = String(format: "%.2f",tipP)
        let tip = bill*tipP/100
        let total = Double(bill+tip)
        
        tipAmountLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

