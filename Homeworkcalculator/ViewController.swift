//
//  ViewController.swift
//  Homeworkcalculator
//
//  Created by Ani on 8/23/19.
//  Copyright © 2019 Ani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txt_Result: UITextField!
    
    var currentNumber = Double()
    var result = Double()
    var currentOperation = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentOperation = "="
        txt_Result.text = ("\(result)")
    }
    
    @IBAction func btn_Number_Input(_ sender: UIButton) {
        let num : Int? = Int(sender.titleLabel!.text!)
        
        currentNumber = currentNumber*10 + Double(num!)
        txt_Result.text = ("\(currentNumber)")
        
        
    }
    
    
    @IBAction func btn_Operation(_ sender: UIButton) {
        
        
        
        switch currentOperation {
        case "=":
            result = currentNumber
        case "+":
            result = result + currentNumber
        case "-":
            result = result - currentNumber
        case "*":
            result = result * currentNumber
        case "/":
            result = result / currentNumber
        default:
            print("something is wrong")
        }
        
        currentNumber = 0
        txt_Result.text = "\(result)"
        
        if(sender.titleLabel!.text == "="){
            result = 0
        }
        currentOperation = sender.titleLabel!.text! as String!
        
    }
    
    @IBAction func btn_Delete(_ sender: UIButton) {
        
        result = 0
        currentOperation = "="
        currentNumber = 0
        txt_Result.text =  "\(result)"
    }
    
}


