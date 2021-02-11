//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    var total = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        switch sender {
        
        case zeroPctButton:
            
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            
        case tenPctButton:
            
            tenPctButton.isSelected = true
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            
        default:
            
            twentyPctButton.isSelected = true
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
        }
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        //percentualButton()
        
        if zeroPctButton.isSelected == true {
            
            print("0.0 ")
            
        }else if tenPctButton.isSelected == true {
            
            print("0.10")
            
        } else if twentyPctButton.isSelected == true {
            
            print("0.20")
            
        }else {
            
            print("No Tips :(")
            
        }
        
        
        
    }
    func percentualButton() -> Float {
        
        var percent: Float
        
        if zeroPctButton.isSelected == true {
            
            percent = 0.0
            return percent
            
        } else if tenPctButton.isSelected == true {
            
            percent = 1.1
            return percent
            
        } else {
            
            percent = 1.2
            return percent
            
        }
        
    }
    //func totalValue() -> Float {
        
    //}

}

