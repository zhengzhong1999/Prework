//
//  SettingViewController.swift
//  Prework
//
//  Created by zhong zheng on 12/29/20.
//  Copyright © 2020 ZHONG ZHENG. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    
    @IBOutlet weak var tip1: UITextField!
    
    @IBOutlet weak var tip2: UITextField!
    
    @IBOutlet weak var tip3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
   
    @IBAction func buttonPressed(_ sender: UIButton) {

        let VC = self.navigationController?.viewControllers[0] as? ViewController
        VC?.tip1 = tip1.text ?? "0"
        VC?.tip2 = tip2.text ?? "0"
        VC?.tip3 = tip3.text ?? "0"
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    


}
