//
//  HomeViewController.swift
//  calenrad
//
//  Created by Caroline Creidenberg on 9/21/18.
//  Copyright © 2018 Caroline Creidenberg. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase
import ContactsUI
import Contacts
import GoogleSignIn

class HomeViewController: UIViewController, GIDSignInUIDelegate {
    
    //ask to get access to contacts
    var userID:String = ""
    
    @IBAction func signOut(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            GIDSignIn.sharedInstance().signOut()
            print("signing out/")
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") ; // MySecondSecreen the storyboard ID
            self.present(vc, animated: true, completion: nil);
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)

    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
}
