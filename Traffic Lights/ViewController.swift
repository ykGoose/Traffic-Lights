//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Владимир Падусов on 14.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightRedView: UIView!
    @IBOutlet var lightYellowView: UIView!
    @IBOutlet var lightGreenView: UIView!
    @IBOutlet var lightSwitchButton: UIButton!
    
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

    @IBAction func buttonPressed() {
        lightGreenView.alpha = 1
        lightSwitchButton.setTitle("NEXT", for: .normal)
    }
    
}

