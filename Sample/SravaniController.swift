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
    

    @IBOutlet weak var farhrenheittotextfield: UITextField!


    // This method is used to convert Celsius to Fahrenheit
    func convertCelciusToFahrenheit(celsius : Int) -> Int {
        let fahreheit = (celsius * 9 / 5 ) + 32;
        
        return fahreheit
    }

    @IBAction func convertFahrenheit(sender: AnyObject) {

        if let number = celsiusTextField.text {
            if let celsius =  Int(number) {
                print (" Fahrenheit : \(convertCelciusToFahrenheit(celsius))");
            } else {
                print ("Empty text")
            }
        } else {
            print ("Empty text")
        }
    }

    @IBAction func converttocelcius(sender: AnyObject) {

        if let number = farhrenheittotextfield.text {
            if let farenheit = Int (number) {
                let celcius = convertToCelcius(farenheit)
                print ("celcius is :    \(celcius)");
            } else {
                print ("Empty text")
            }
        } else {
            print ("Empty text")
        }
    }
    
    func convertToCelcius(farenheit : Int) -> Int {
        let celcius = (farenheit  -  32)*5/9;
        return celcius

    }


}

