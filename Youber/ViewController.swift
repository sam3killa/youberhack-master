//
//  ViewController.swift
//  Youber
//
//  Created by Vinod Sirimalle on 3/10/15.
//  Copyright (c) 2015 vs. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    
    

    @IBOutlet weak var errorText: UILabel!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    func checkPassword (){

        PFUser.logInWithUsernameInBackground(username.text, password: password.text) { (success: PFUser!, error: NSError!) -> Void in
            if error == nil {
                self.performSegueWithIdentifier("loginSegue", sender: nil)
                self.loginButton.enabled = false
            }
            else {
                var alert = UIAlertView(title: "Oops", message: "The email or password you entered is incorreect!", delegate: nil, cancelButtonTitle: "Ok")
                alert.show()
            }
        }
        
    }


    @IBAction func onLoginButtonPressed(sender: AnyObject) {
        checkPassword()
    }
    


}

