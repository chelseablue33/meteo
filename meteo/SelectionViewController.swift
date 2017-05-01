//
//  SelectionViewController.swift
//  meteo
//
//  Created by yves binda on 4/30/17.
//  Copyright © 2017 yvesbinda. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClicked(button:UIButton) {
        button.isSelected = !button.isSelected
    }
}
