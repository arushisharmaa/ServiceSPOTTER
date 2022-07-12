//
//  ForgetPasswordViewController.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/15/21.
//

import UIKit
import Firebase
class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var lblStatus: UILabel!
    @IBAction func didTapButtonSettings(_ sender: Any) {
        let upvc = storyboard?.instantiateViewController(identifier: "up-vc") as! UserProfileViewController
        present(upvc, animated: true)
        
    }
    
    @IBAction func didTapButtonHome(_ sender: Any) {
        let hvc = storyboard?.instantiateViewController(identifier: "h-vc") as! HomeViewController
        present(hvc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
         view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func forgotPassTapped(_ sender: Any) {
        let auth = Auth.auth()
        
        auth.sendPasswordReset(withEmail: emailField.text!) { (error) in
            if error == nil{
                self.lblStatus.text! = "SENT!"
            }else {
            self.lblStatus.text! = "ERROR"
        }
        
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
}
