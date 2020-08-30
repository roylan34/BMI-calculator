//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Roelan Geil Eroy on 8/27/20.
//

import UIKit

class ResultController: UIViewController {
    
    var bmi: String?
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(bmi!);
        resultLabel.text = String(bmi!);
    }
    
    @IBAction func reculaculate(){
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
