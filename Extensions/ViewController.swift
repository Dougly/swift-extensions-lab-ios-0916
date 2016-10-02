//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fullName: String = "Douglas Edward Galante"
        let phoneNumber: Int = 8675309
        
        print (fullName.whisper())
        print (fullName.shout())
        print (fullName.pigLatin)
        print (fullName.points)
        
        print (phoneNumber.half())
        print (phoneNumber.isDivisible(by: 22))
        print (phoneNumber.halved)
        print (phoneNumber.squared)
        
        unicornLevelLabel.text = fullName.unicornLevel
        
        
    }
}


