//
//  LoginViewController.swift
//  firetutorial
//
//  Created by Charles Okehie on 8/1/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setUpElements()
    }
    func setUpElements(){
        
        //Hide the error label
        errorLabel.alpha = 0
        
        //style the elements
        Utilities.styleTextField(emailTextField)
        
        Utilities.styleTextField(passwordTextField)
        
        Utilities.styleFilledButton(logInButton)
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func logInTapped(_ sender: Any) {
        //create cleaned version, force unwrap assuming there are no errors all validated, dolater
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //signin
        Auth.auth().signIn(withEmail: email, password: password)
       
//        replace with func transition to hone at some point, found in sign up
        let homeViewController =
        storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        //swap out view
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        // this is reusable transition to ____
    }
    
    
    
}
