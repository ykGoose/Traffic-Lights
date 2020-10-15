//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Владимир Падусов on 14.10.2020.
//

import UIKit

class TrafficLights: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet var lightRedView: UIView!
    @IBOutlet var lightYellowView: UIView!
    @IBOutlet var lightGreenView: UIView!
    @IBOutlet var lightSwitchButton: UIButton!
    
    // MARK: - Public Properties
    private var lightColor = "Turn off"
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        lightRedView.alpha = 0.3
        lightRedView.layer.cornerRadius = 50
        lightYellowView.alpha = 0.3
        lightYellowView.layer.cornerRadius = 50
        lightGreenView.alpha = 0.3
        lightGreenView.layer.cornerRadius = 50
        lightSwitchButton.layer.cornerRadius = 10
    }
    
    // MARK: - IB Actions
    @IBAction func lightSwitchButtonPressed() {
        
        switch lightColor {
        case "Red":
            lightYellowView.alpha = 1
            lightRedView.alpha = 0.3
            lightColor = "Yellow"
        case "Yellow":
            lightGreenView.alpha = 1
            lightYellowView.alpha = 0.3
            lightColor = "Green"
        case "Green":
            lightRedView.alpha = 1
            lightGreenView.alpha = 0.3
            lightColor = "Red"
        default:
            lightSwitchButton.setTitle("NEXT", for: .normal)
            lightRedView.alpha = 1
            lightColor = "Red"
        }

    }
    
}

