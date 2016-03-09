//
//  ViewController.swift
//  Sample
//
//  Created by Sravani Pagidela on 09/03/16.
//  Copyright © 2016 Sravani Pagidela. All rights reserved.
//

import UIKit

class SravaniController: UIViewController {
    

    @IBOutlet weak var celsiusTextField: UITextField!
    

    // This method is used to convert Celsius to Fahrenheit
    func convertCelciusToFahrenheit(celsius : Int) -> Int {
        let fahreheit = (celsius * 9 / 5 ) + 32;
        
        return fahreheit
    }

    @IBAction func convertFahrenheit(sender: AnyObject) {
        let celsius =  Int (celsiusTextField.text!)
        print (" Fahrenheit : \(convertCelciusToFahrenheit(celsius!))");
    }
}

