//
//  CreateAccountViewController.swift
//  Youber
//
//  Created by Samuel Shih on 3/12/15.
//  Copyright (c) 2015 vs. All rights reserved.
//

import UIKit
import Parse

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressSignUpButton(sender: AnyObject) {
        
        // Create a user in Parse and setting the username and password attributes
        var user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        // name success: and error:
        user.signUpInBackgroundWithBlock { (success: Bool, error: NSError!) -> Void in
            
            // If there is an error do something
            if success == true {
                self.dismissViewControllerAnimated(true , completion: { () -> Void in
                    
                })
            }
            else {
                var alert = UIAlertView(title: "Oops!", message: "The username that you entered is already taken", delegate: nil, cancelButtonTitle: "OK")
                alert.show()
            }
        }
    }

    @IBAction func didPressCancelButton(sender: AnyObject) {
        
        // Dismisses the view controller
        dismissViewControllerAnimated(true , completion: { () -> Void in
        })
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
