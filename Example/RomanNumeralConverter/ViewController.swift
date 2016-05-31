//
//  ViewController.swift
//  RomanNumeralConverter
//
//  Created by Donny Davis on 05/22/2016.
//  Copyright (c) 2016 Donny Davis. All rights reserved.
//

import UIKit
import RomanNumeralConverter

class ViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var valueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Button Actions
    
    @IBAction func convertAction(sender: UIButton) {
        guard let number = numberTextField?.text where number != "" else {
            return
        }
        
        valueLabel.text = RomanNumeralConverter.convertNumber(Int(number)!)
        
    }

}

