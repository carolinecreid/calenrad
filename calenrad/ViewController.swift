//
//  ViewController.swift
//  calenrad
//
//  Created by Caroline Creidenberg on 9/20/18.
//  Copyright © 2018 Caroline Creidenberg. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        GIDSignIn.sharedInstance().uiDelegate = self
      //  GIDSignIn.sharedInstance().signIn()
        
        
    }
    
    @IBAction func signOut(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            print("signing out/")
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if(GIDSignIn.sharedInstance().hasAuthInKeychain()){
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController; // MySecondSecreen the storyboard ID
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    
}

