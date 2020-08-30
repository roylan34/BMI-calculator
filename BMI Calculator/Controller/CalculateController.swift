//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Vananaz Developer on 8/27/20.
//  Copyright © 2020 Roe Developer. All rights reserved.
//

import UIKit

class CalculateController: UIViewController {
    
    var calculator = CalculatorModel()
    
    var bmiValue = "0.0";
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider){
        let sliderValue = String(format: "%.2f", sender.value);
        heightLabel.text = "\(sliderValue) cm";

    }
    
    @IBAction func weightSlider(_ sender: UISlider){
      let sliderValue = String(format: "%.0f", sender.value);
      weightLabel.text = "\(sliderValue) kg";
    }
    
    @IBAction func calculate(){
        let height = heightSlider.value;
        let weight = weightSlider.value;
        
        //Show custom view DetailsController
//        let detailsCtr = DetailsController()
//        detailsCtr.bmi = String(format: "%.2f", bmi)
//        self.present(detailsCtr, animated: true, completion: nil)
        
        
        calculator.calculateBmi(height: height, weight: weight)
        self.performSegue(withIdentifier: "gotoResult", sender: self)
        
    }
    
    //This way is useful when have multi screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            let destinationResultCtr = segue.destination as! ResultController
            destinationResultCtr.bmi = calculator.getBmi();
        }
    }

}

