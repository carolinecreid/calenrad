//
//  FormTwoViewController.swift
//  calenrad
//
//  Created by Caroline Creidenberg on 9/21/18.
//  Copyright © 2018 Caroline Creidenberg. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import GoogleSignIn

class FormTwoViewController: UIViewController {
    
    var newHappening:String = ""
    var newAttendees:String = ""
    var userID:String = ""
    var inviteNumber = ""
    var inviteNameFirst = ""
    var inviteNameLast = ""
    
     func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
        self.userID = user.userID
    }
    
    @IBOutlet weak var monday: UIButton!
    var monChecked = false
    @IBAction func checkMon(_ mondaySender: UIButton) {
        monChecked = !monChecked
        if monChecked {
            mondaySender.backgroundColor = UIColor.darkGray
        } else {
            mondaySender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var tuesday: UIButton!
    var tuesChecked = false
    @IBAction func tuesCheck(_ tuesSender: UIButton) {
        tuesChecked = !tuesChecked
        if tuesChecked {
            tuesSender.backgroundColor = UIColor.darkGray
        } else {
            tuesSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var wednesday: UIButton!
    var wedChecked = false
    
    @IBAction func wedCheck(_ wedSender: UIButton) {
        wedChecked = !wedChecked
        if wedChecked {
            wedSender.backgroundColor = UIColor.darkGray
        } else {
            wedSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var thursday: UIButton!
    var thurChecked = false
    
    @IBAction func thursCheck(_ thurSender: UIButton) {
        thurChecked = !thurChecked
        if thurChecked {
            thurSender.backgroundColor = UIColor.darkGray
        } else {
            thurSender.backgroundColor = UIColor.lightGray
        }
    }
    @IBOutlet weak var friday: UIButton!
    var friChecked = false
    
    @IBAction func fridayCheck(_ friSender: UIButton) {
        friChecked = !friChecked
        if friChecked {
            friSender.backgroundColor = UIColor.darkGray
        } else {
            friSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var saturday: UIButton!
    var satChecked = false
    @IBAction func satCheck(_ satSender: UIButton) {
        satChecked = !satChecked
        if satChecked {
            satSender.backgroundColor = UIColor.darkGray
        } else {
            satSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var sunday: UIButton!
    var sunChecked = false
    
    @IBAction func sunCheck(_ sunSender: UIButton) {
        sunChecked = !sunChecked
        if sunChecked {
            sunSender.backgroundColor = UIColor.darkGray
        } else {
            sunSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var morning: UIButton!
    var mornChecked = false
    @IBAction func morningCheck(_ mornSender: UIButton) {
        mornChecked = !mornChecked
        if mornChecked {
            mornSender.backgroundColor = UIColor.darkGray
        } else {
            mornSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var afternoon: UIButton!
    var aftChecked = false
    @IBAction func afterCheck(_ aftSender: UIButton) {
        aftChecked = !aftChecked
        if aftChecked {
            aftSender.backgroundColor = UIColor.darkGray
        } else {
            aftSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var evening: UIButton!
    var evenChecked = false
    @IBAction func evenCheck(_ evenSender: UIButton) {
        evenChecked = !evenChecked
        if evenChecked {
            evenSender.backgroundColor = UIColor.darkGray
        } else {
            evenSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var fullDay: UIButton!
    var fullChecked = false
    @IBAction func fullCheck(_ fullSender: UIButton) {
        fullChecked = !fullChecked
        if fullChecked {
            fullSender.backgroundColor = UIColor.darkGray
        } else {
            fullSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var oneHour: UIButton!
    var oneChecked = false
    @IBAction func oneHour(_ oneSender: UIButton) {
        oneChecked = !oneChecked
        if oneChecked {
            oneSender.backgroundColor = UIColor.darkGray
        } else {
            oneSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var twoHours: UIButton!
    var twoChecked = false
    @IBAction func twoHours(_ twoSender: UIButton) {
        twoChecked = !twoChecked
        if twoChecked {
            twoSender.backgroundColor = UIColor.darkGray
        } else {
            twoSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var threeHours: UIButton!
    var threeChecked = false
    @IBAction func threeHours(_ threeSender: UIButton) {
        threeChecked = !threeChecked
        if threeChecked {
            threeSender.backgroundColor = UIColor.darkGray
        } else {
            threeSender.backgroundColor = UIColor.lightGray
        }
    }
    
    
    @IBOutlet weak var fourHours: UIButton!
    var fourChecked = false
    @IBAction func fourHours(_ fourSender: UIButton) {
        fourChecked = !fourChecked
        if fourChecked {
            fourSender.backgroundColor = UIColor.darkGray
        } else {
            fourSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var fivePlus: UIButton!
     var fivePlusChecked = false
    @IBAction func fivePlus(_ fiveSender: UIButton) {
        fivePlusChecked = !fivePlusChecked
        if fivePlusChecked {
            fiveSender.backgroundColor = UIColor.darkGray
        } else {
            fiveSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var week: UIButton!
    var weekChecked = false
    @IBAction func weekCheck(_ weekSender: UIButton) {
        weekChecked = !weekChecked
        if weekChecked {
            weekSender.backgroundColor = UIColor.darkGray
        } else {
            weekSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var twoWeek: UIButton!
    var twoWeekChecked = false
    @IBAction func twoWeekCheck(_ twoWeekSender: UIButton) {
        twoWeekChecked = !twoWeekChecked
        if twoWeekChecked {
            twoWeekSender.backgroundColor = UIColor.darkGray
        } else {
            twoWeekSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var month: UIButton!
    var monthChecked = false
    @IBAction func monthCheck(_ monthSender: UIButton) {
        monthChecked = !monthChecked
        if monthChecked {
            monthSender.backgroundColor = UIColor.darkGray
        } else {
            monthSender.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var twoMonth: UIButton!
    var twoMonthChecked = false
    @IBAction func twoMonthCheck(_ twoMonthSender: UIButton) {
        twoMonthChecked = !twoMonthChecked
        if twoMonthChecked {
            twoMonthSender.backgroundColor = UIColor.darkGray
        } else {
            twoMonthSender.backgroundColor = UIColor.lightGray
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(inviteNumber)
        print(inviteNameFirst)
        print(inviteNameLast)
        print(newHappening)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        monday.backgroundColor = UIColor.lightGray
        tuesday.backgroundColor = UIColor.lightGray
        wednesday.backgroundColor = UIColor.lightGray
        thursday.backgroundColor = UIColor.lightGray
        friday.backgroundColor = UIColor.lightGray
        sunday.backgroundColor = UIColor.lightGray
        saturday.backgroundColor = UIColor.lightGray
        
        morning.backgroundColor = UIColor.lightGray
        afternoon.backgroundColor = UIColor.lightGray
        evening.backgroundColor = UIColor.lightGray
        fullDay.backgroundColor = UIColor.lightGray
        
        week.backgroundColor = UIColor.lightGray
        twoWeek.backgroundColor = UIColor.lightGray
        month.backgroundColor = UIColor.lightGray
        twoMonth.backgroundColor = UIColor.lightGray
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    var ref: DatabaseReference!
    
    @IBAction func submit(_ sender: UIButton) {
        self.ref = Database.database().reference()
        let user = Auth.auth().currentUser?.uid
        let eventID = UUID().uuidString
     
        self.ref.child("users").child(user!).child("events").child(eventID).child("happening").setValue(newHappening)
        self.ref.child("users").child(user!).child("events").child(eventID).child("invitee").child("firstName").setValue(inviteNameFirst)
        self.ref.child("users").child(user!).child("events").child(eventID).child("invitee").child("lastName").setValue(inviteNameLast)
        self.ref.child("users").child(user!).child("events").child(eventID).child("invitee").child("phoneNumber").setValue(inviteNumber)
        
    }
}
