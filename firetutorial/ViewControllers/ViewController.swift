//
//  ViewController.swift
//  firetutorial
//
//  Created by Charles Okehie on 8/1/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
   
   @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpElements()
    }

    func setUpElements(){
        
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(logInButton)
    
    }

}

