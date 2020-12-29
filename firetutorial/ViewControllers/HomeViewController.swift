//
//  HomeViewController.swift
//  firetutorial
//
//  Created by Charles Okehie on 8/1/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import UIKit
import SwiftUI

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func showswiftui(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: Tabs())
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
