//
//  ViewController.swift
//  BMI+
//
//  Created by Ananth Kashyap on 11/14/20.
//

import UIKit

class AddData: UIViewController {

    
    @IBOutlet weak var Continue: UIButton!
    @IBOutlet weak var BodyDataView: UIView!
    
    @IBOutlet weak var userWeight: UITextField!
    @IBOutlet weak var userHeight: UITextField!
    @IBOutlet weak var userAge: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ContinueToBMI" {
            let vc = segue.destination as! BMIScreen
            vc.userAge = Double(userAge.text!)
            vc.userWeight = Double(userWeight.text!)
            vc.userHeight = Double(userHeight.text!)
            
        }
    }
    
    @IBAction func PressContinue(_ sender: Any) {
        performSegue(withIdentifier: "ContinueToBMI", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Continue.layer.cornerRadius = 10
        BodyDataView.layer.cornerRadius = 10
        
    }


}

