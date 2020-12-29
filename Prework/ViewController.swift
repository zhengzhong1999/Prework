//
//  ViewController.swift
//  Prework
//
//  Created by zhong zheng on 12/29/20.
//  Copyright © 2020 ZHONG ZHENG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var total: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func CalculateTip(_ sender: Any) {
        
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        total.text = String(format: "$%.2f", tip + bill)
        
        // this is comment
    }
    


}

