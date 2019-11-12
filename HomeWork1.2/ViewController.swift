//
//  ViewController.swift
//  HomeWork1.2
//
//  Created by Наташа Лемешевская on 11/12/19.
//  Copyright © 2019 Наташа Лемешевская. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    @IBOutlet var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let radius = redColor.frame.width/2
        redColor.alpha = 0.3
        redColor.layer.cornerRadius = radius
        yellowColor.alpha = 0.3
        yellowColor.layer.cornerRadius = radius
        greenColor.alpha = 0.3
        greenColor.layer.cornerRadius = radius
        
    }

    @IBAction func startAction() {
        if redColor.alpha == 1 {
            yellowColor.alpha = 1
            redColor.alpha = 0.3
        }else if yellowColor.alpha == 1 {
            greenColor.alpha = 1
            yellowColor.alpha = 0.3
        }else if greenColor.alpha == 1 {
            redColor.alpha = 1
            greenColor.alpha = 0.3
        }else {
            buttonStart.setTitle("NEXT", for: .normal)
            redColor.alpha = 1
        }
    }

}

