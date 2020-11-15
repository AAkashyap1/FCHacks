//
//  SelectionScreen.swift
//  BMI+
//
//  Created by Ananth Kashyap on 11/14/20.
//

import UIKit

class SelectionScreen: UIViewController {
    
    var userHeight: Double!
    var userAge: Double!
    var userWeight: Double!
    
    @IBOutlet var CategoryLabels: [UIView]!
    @IBOutlet var ViewButtons: [UIButton]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToBMI" {
            let vc = segue.destination as! BMIScreen
            vc.userAge = userAge
            vc.userWeight = userWeight
            vc.userHeight = userHeight
        } else if segue.identifier == "ToPhysicalActivity" {
            let vc = segue.destination as! PhysicalActivityScreen
            vc.userAge = userAge
            vc.userWeight = userWeight
            vc.userHeight = userHeight
        } else if segue.identifier == "ToDietaryAdvice" {
            let vc = segue.destination as! DietaryAdviceScreen
            vc.userAge = userAge
            vc.userWeight = userWeight
            vc.userHeight = userHeight
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
