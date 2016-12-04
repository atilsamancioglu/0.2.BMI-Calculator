//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Atıl Samancıoğlu on 04/12/2016.
//  Copyright © 2016 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    
    var userWeight = 0.00
    var userHeight = 0.00
    var userHeightSquare = 0.00
    var finalBMI = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func calculateButtonClicked(_ sender: Any) {
        
        if let newWeight = Double(weightText.text!) {
            userWeight = newWeight * 0.45
        }
        
        if let newHeight = Double(heightText.text!) {
            userHeight = newHeight * 0.025
        }
        
        userHeightSquare = userHeight * userHeight
        
        finalBMI = userWeight / userHeightSquare
        
        resultLabel.text = "BMI Result: \(finalBMI.rounded())"
        
        if finalBMI < 19 {
            commentLabel.text = "You need to gain some weight!"
        } else if finalBMI > 19 && finalBMI < 25 {
            commentLabel.text = "You are healthy, congratulations!"
        } else {
            commentLabel.text = "You need to loose some weight!"
        }
    
    }

}

