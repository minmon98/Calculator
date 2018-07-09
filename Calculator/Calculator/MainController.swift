//
//  ViewController.swift
//  Calculator
//
//  Created by Minh Mon on 7/9/18.
//  Copyright © 2018 Minh Mon. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    // Controls
    @IBOutlet weak var txtNumber1: UITextField!
    @IBOutlet weak var txtNumber2: UITextField!
    @IBOutlet weak var txtResult: UITextField!
    
    // Events
    @IBAction func btnSum_Pressed(_ sender: Any) {
        sum()
    }

    @IBAction func btnSubtract_Pressed(_ sender: Any) {
        subtract()
    }
    
    @IBAction func btnMultiply_Pressed(_ sender: Any) {
        multiply()
    }
    
    @IBAction func btnDivide_Pressed(_ sender: Any) {
        divide()
    }
    
    @IBAction func btnGCD_Pressed(_ sender: Any) {
        GCD()
    }
    
    // Support functions
    
    func sum() {
        let num1 = Int(txtNumber1.text!)!
        let num2 = Int(txtNumber2.text!)!
    
        txtResult.text = String(Maths.sum(number1: num1,number2: num2))
    }
    
    func subtract() {
        let num1 = Int(txtNumber1.text!)!
        let num2 = Int(txtNumber2.text!)!
        
        txtResult.text = String(Maths.subtract(number1: num1,number2: num2))
    }
    
    func multiply() {
        let num1 = Int(txtNumber1.text!)!
        let num2 = Int(txtNumber2.text!)!
        
        txtResult.text = String(Maths.multiply(number1: num1,number2: num2))
    }
    
    func divide() {
        let num1 = Int(txtNumber1.text!)!
        let num2 = Int(txtNumber2.text!)!
        
        txtResult.text = String(Maths.divide(number1: num1,number2: num2))
    }
    
    func GCD() {
        let num1 = Int(txtNumber1.text!)!
        let num2 = Int(txtNumber2.text!)!
        
        txtResult.text = String(Maths.GCD(number1: num1,number2: num2))
    }
    
    func addDoneButton(textField: UITextField) {
        let toolbar = UIToolbar()
        toolbar.items = [
            UIBarButtonItem.init(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
            UIBarButtonItem.init(title: "Done", style: .done, target: textField, action: #selector(UITextField.resignFirstResponder))
        ]
        toolbar.sizeToFit()
        textField.inputAccessoryView = toolbar
    }
    
    // Main function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addDoneButton(textField: txtNumber1)
        addDoneButton(textField: txtNumber2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

