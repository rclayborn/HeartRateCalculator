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
    @IBOutlet weak var FitnessInfoLabel: UILabel!
    
    @IBOutlet weak var ageTextfield: UITextField!
    @IBOutlet weak var RestingHRTextfield: UITextField!
    
    @IBOutlet weak var maxHRLabel: UILabel!
    
    @IBOutlet weak var zone1Label: UILabel!
    @IBOutlet weak var zone2Label: UILabel!
    @IBOutlet weak var zone3Label: UILabel!
    @IBOutlet weak var zone4Label: UILabel!
    @IBOutlet weak var zone5Label: UILabel!
    
    var male = true
    
    var age = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        male = true
    }

    @IBAction func HeartRateZoneButtonAction(_ sender: AnyObject) {
        print("Start Pressed")
        
        if male == true {
            let age = Int(ageTextfield.text!)
            let menHRmax = 206 - (0.88 * Double(age!))
            
            maxHRLabel.text = "Max Heart Rate \(menHRmax)"
            let restingHR = Int(RestingHRTextfield.text!)!
            
            let maxRestMath = Int(menHRmax) - restingHR
            let zone1 = Double(maxRestMath) * 0.67 + Double(restingHR)
            let zone2 = Double(maxRestMath) * 0.73 + Double(restingHR)
            let zone3 = Double(maxRestMath) * 0.79 + Double(restingHR)
            let zone4 = Double(maxRestMath) * 0.85 + Double(restingHR)
            let zone5 = Double(maxRestMath) * 0.91 + Double(restingHR)
            let maxHeartRate = Double(maxRestMath) * 0.97 + Double(restingHR)
            
            zone1Label.text = "Zone 1: \(Int(zone1))-\(Int(zone2)) Get the blood flowing for faster recovery"
            zone2Label.text = "Zone 2: \(Int(zone2))-\(Int(zone3)) Spend most of your time here for an Endurance base"
            zone3Label.text = "Zone 3: \(Int(zone3))-\(Int(zone4)) Use this zone to improve speed and power"
            zone4Label.text = "Zone 4, \(Int(zone4))-\(Int(zone5)) Use this zone to push back your Lactate Theshold"
            zone5Label.text = "Zone 5: \(Int(zone5))-\(Int(maxHeartRate)) This is going to hurt"

        }else {
            let age = Int(ageTextfield.text!)
            let womenHRmax = 205.8 - (0.685 * Double(age!))
            
            maxHRLabel.text = "Max Heart Rate \(womenHRmax)"
            let restingHR = Int(RestingHRTextfield.text!)!
        
        let maxRestMath = Int(womenHRmax) - restingHR
        let zone1 = Double(maxRestMath) * 0.67 + Double(restingHR)
        let zone2 = Double(maxRestMath) * 0.73 + Double(restingHR)
        let zone3 = Double(maxRestMath) * 0.79 + Double(restingHR)
        let zone4 = Double(maxRestMath) * 0.85 + Double(restingHR)
        let zone5 = Double(maxRestMath) * 0.91 + Double(restingHR)
        let maxHeartRate = Double(maxRestMath) * 0.97 + Double(restingHR)
        
            zone1Label.text = "Zone 1: \(Int(zone1))-\(Int(zone2)) Get the blood flowing for faster recovery"
            zone2Label.text = "Zone 2: \(Int(zone2))-\(Int(zone3)) Spend most of your time here for an Endurance base"
            zone3Label.text = "Zone 3: \(Int(zone3))-\(Int(zone4)) Use this zone to improve speed and power"
            zone4Label.text = "Zone 4, \(Int(zone4))-\(Int(zone5)) Use this zone to push back your Lactate Theshold"
            zone5Label.text = "Zone 5: \(Int(zone5))-\(Int(maxHeartRate)) This is going to hurt"
    }
        }
    
    @IBAction func fitnessLevelSegAction(_ sender: AnyObject) {
        if(fitnessLevelSeg.selectedSegmentIndex == 0)
        {
            FitnessInfoLabel.text = "Male"
            male = true
        }
        else if(fitnessLevelSeg.selectedSegmentIndex == 1)
        {
            FitnessInfoLabel.text = "Female"
            male = false
        }
    }
    
    @IBAction func menuButtonAction(_ sender: AnyObject) {
        print("Menu Button Pressed")
    }


}

