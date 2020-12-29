//
//  ProfileInfoViewController.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/7/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBSegueAction func showswiftui(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: GroupOfButtons())
    }
}
