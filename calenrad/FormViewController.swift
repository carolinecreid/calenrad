//
//  FormViewController.swift
//  calenrad
//
//  Created by Caroline Creidenberg on 9/21/18.
//  Copyright © 2018 Caroline Creidenberg. All rights reserved.
//

import UIKit
import Firebase
import Contacts
import ContactsUI
import GoogleSignIn
import FirebaseAuth

class FormViewController: UIViewController, CNContactPickerDelegate {
    
    var contactStore = CNContactStore()
    var inviteNumber = ""
    var inviteNameFirst = ""
    var inviteNameLast = ""
    
    // var isHappening
    @IBOutlet weak var happening: UITextField!
    
    @IBOutlet weak var invitees: UILabel!
    
    @IBAction func getContacts(_ sender: UIButton) {
        let contactPicker = CNContactPickerViewController()
        contactPicker.delegate = self;
        contactPicker.displayedPropertyKeys = [CNContactPhoneNumbersKey]
        
        self.present(contactPicker, animated: true, completion: nil)
    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contactProperty: CNContactProperty) {
        let contactFirstName = contactProperty.contact.givenName
        let contactLastName = contactProperty.contact.familyName
        invitees.text = contactFirstName + " " + contactLastName
        inviteNameLast = contactLastName
        inviteNameFirst = contactFirstName
        
        let phoneNumberValue = contactProperty.value as! CNPhoneNumber
        inviteNumber = phoneNumberValue.stringValue
        print(inviteNumber)
        
        
        
        print(contactFirstName + " " + contactLastName)
    }
    

    @IBAction func continueOn(_ sender: UIButton) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "FormTwoViewController") as! FormTwoViewController
        
        myVC.newHappening = happening.text!
        myVC.inviteNumber = inviteNumber
        myVC.inviteNameFirst = inviteNameFirst
        myVC.inviteNameLast = inviteNameLast
        
        navigationController?.pushViewController(myVC, animated: true)
        
    }
    
    
    
    override func viewDidLoad() {
        let user = Auth.auth().currentUser?.uid
        print(user)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
    }
    
   
    
}


