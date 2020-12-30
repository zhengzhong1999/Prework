//
//  ViewController.swift
//  Prework
//
//  Created by zhong zheng on 12/29/20.
//  Copyright © 2020 ZHONG ZHENG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tip1 = "15"
    var tip2 = "18"
    var tip3 = "20"
    
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var total: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var size: UILabel!
    
    
    @IBOutlet weak var averagePay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tipLabel.text = "$0.00"
        total.text = "$0.00"
        size.text = "0"
        averagePay.text = "$0.00"
        tipControl.setTitle(String(tip1)+"%", forSegmentAt: 0)
        tipControl.setTitle(String(tip2)+"%", forSegmentAt: 1)
        tipControl.setTitle(String(tip3)+"%", forSegmentAt: 2)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("hello")
        super.viewWillAppear(animated)
        tipLabel.text = "$0.00"
        total.text = "$0.00"
        size.text = "0"
        averagePay.text = "$0.00"
        tipControl.setTitle(String(tip1)+"%", forSegmentAt: 0)
        tipControl.setTitle(String(tip2)+"%", forSegmentAt: 1)
        tipControl.setTitle(String(tip3)+"%", forSegmentAt: 2)
    }
    
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func CalculateTip(_ sender: Any) {
        
        
        let a = Double(tip1)
        let b = Double(tip2)
        let c = Double(tip3)
        let tipPercentages = [a,b,c]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * (tipPercentages[tipControl.selectedSegmentIndex] ?? 0) / 100
        
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        total.text = String(format: "$%.2f", tip + bill)
        
        let n = size.text
        
         averagePay.text = String(format: "$%.2f", (tip+bill)/Double((Int(n ?? "1") ?? 1)))
        
    }
    
    
    @IBAction func ChangeSize(_ sender: UIStepper) {
        
        size.text = Int(sender.value).description
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        total.text = String(format: "$%.2f", tip + bill)
        
        let n = size.text
        averagePay.text = String(format: "$%.2f", (tip+bill)/Double((Int(n ?? "1") ?? 1)))
    }
    
    
    
    @IBAction func goToSetting(_ sender: Any) {
        performSegue(withIdentifier: "setting", sender: self)
    }
    


}

