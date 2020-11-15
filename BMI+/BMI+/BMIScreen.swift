//
//  BMIScreen.swift
//  BMI+
//
//  Created by Ananth Kashyap on 11/14/20.
//

import UIKit

class BMIScreen: UIViewController {

    var userHeight: Double!
    var userAge: Double!
    var userWeight: Double!
    
    @IBOutlet weak var CompareView: UIView!
    @IBOutlet weak var WhatIsItView: UIView!
    @IBOutlet weak var PoundsView: UIView!
    @IBOutlet weak var BMIImage: UIImageView!
    @IBOutlet weak var ComparisonText: UILabel!
    @IBOutlet weak var WeightText: UILabel!
    @IBOutlet weak var BMITitle: UILabel!
    @IBOutlet weak var WeightLarge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WhatIsItView.layer.cornerRadius = 10
        CompareView.layer.cornerRadius = 10
        PoundsView.layer.cornerRadius = 10
        
        let BMI = (703*userWeight)/(userHeight*userHeight)
        
        
        let WeightIncrease = (userHeight*userHeight*(22-BMI))/703
        let WeightDecrease = (userHeight*userHeight*(BMI-22))/703
        
        BMITitle.text = "Your BMI is " + String(round(BMI)) + "."
        
        if (BMI < 18.5) {
            BMIImage.tintColor =  UIColor.systemGray6
            ComparisonText.text = "Your current BMI indicates that you are underweight. A chart of BMI levels and their associated weight is given below."
            WeightText.text = "Currently, you are in the underweight category for BMI. Your goal should be to at gain at least " + String(round(WeightIncrease)) + " pounds in order to have a healty weight."
            WeightLarge.text = String(((round(WeightIncrease))*10)/10) + " lbs"
        } else if (BMI < 25) {
            BMIImage.tintColor =  UIColor.systemTeal
            ComparisonText.text = "Your current BMI indicates that you have a healthy weight. A chart of BMI levels and their associated weight is given below."
            WeightText.text = "Currently, you are in the healthy weight category for BMI. You should continue to maintain your habits in order to sustain this BMI."
            WeightLarge.text = "0 lbs"
        } else if (BMI < 30) {
            BMIImage.tintColor =  UIColor.systemPurple
            ComparisonText.text = "Your current BMI indicates that you are overweight. A chart of BMI levels and their associated weight is given below."
            WeightText.text = "Currently, you are in the underweight category for BMI. Your goal should be to at gain at least " + String(round(WeightDecrease)) + " pounds in order to have a healty weight."
            WeightLarge.text = String(((round(WeightDecrease))*10)/10) + " lbs"
        } else {
            BMIImage.tintColor =  UIColor.systemPurple
            ComparisonText.text = "Your current BMI indicates that you are obese. A chart of BMI levels and their associated weight is given below."
            WeightText.text = "Currently, you are in the underweight category for BMI. Your goal should be to at gain at least " + String(round(WeightDecrease)) + " pounds in order to have a healty weight."
            WeightLarge.text = String(((round(WeightDecrease))*10)/10) + " lbs"
        }
        
        
        
    }
    
}
