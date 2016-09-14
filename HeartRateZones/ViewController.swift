//
//  ViewController.swift
//  HeartRateZones
//
//  Created by Randall Clayborn on 9/14/16.
//  Copyright © 2016 claybear39. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fitnessLevelSeg: UISegmentedControl!
    
    @IBOutlet weak var ageTextfield: UITextField!
    @IBOutlet weak var RestingHRTextfield: UITextField!
    
    @IBOutlet weak var MaxHRLabel: UILabel!
    
    @IBOutlet weak var zone1Label: UILabel!
    @IBOutlet weak var zones2Label: UILabel!
    @IBOutlet weak var zone3Label: UILabel!
    @IBOutlet weak var zone4Label: UILabel!
    @IBOutlet weak var zone5Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func HeartRateZoneButtonAction(_ sender: AnyObject) {
        print("Start Pressed")
    }
    
    @IBAction func fitnessLevelSegAction(_ sender: AnyObject) {
        
    }
    
    @IBAction func menuButtonAction(_ sender: AnyObject) {
        print("Menu Button Pressed")
    }
   
}

