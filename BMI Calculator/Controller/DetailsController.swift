//
//  DetailsController.swift
//  BMI Calculator
//
//  Created by Vananaz Developer on 8/27/20.
//  Copyright © 2020 Roe Developer. All rights reserved.
//

import UIKit

class DetailsController: UIViewController{
    
    var bmi: String = "0.0"
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = bmi
        label.adjustsFontSizeToFitWidth = true;
        label.textColor = UIColor.white
        label.frame = CGRect(x: 50, y: 150, width: 100, height: 100)
        
        view.backgroundColor = UIColor.blue
        view.addSubview(label);
        
    }
    
    
}
