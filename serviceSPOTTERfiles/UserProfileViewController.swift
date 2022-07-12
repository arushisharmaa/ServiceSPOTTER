//
//  UserProfileViewController.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/15/21.
//

import UIKit
import FirebaseAuth
class UserProfileViewController: UIViewController {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    @IBOutlet weak var leading: NSLayoutConstraint!
    var menuOut = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapButtonLogIn(_ sender: Any) {
        let logvc = storyboard?.instantiateViewController(identifier: "log-vc") as! LogInViewController
        present(logvc, animated: true)
    }
    @IBAction func didTapButtonSignUp(_ sender: Any) {
        let suvc = storyboard?.instantiateViewController(identifier: "su-vc") as! SignUpViewController
        present(suvc, animated: true)
    }

    @IBAction func didTapButtonHome(_ sender: Any) {
        let hvc = storyboard?.instantiateViewController(identifier: "h-vc") as! HomeViewController
        present(hvc, animated: true)
    }
    
    @IBAction func didTapButtonPreference(_ sender: Any) {
        let pvc = storyboard?.instantiateViewController(identifier: "p-vc") as! PrefViewController
        present(pvc, animated: true)
    }
    
    @IBAction func didTapButtonMap(_ sender: Any) {
        let mapvc = storyboard?.instantiateViewController(identifier: "fm-vc") as! FullMapViewController
        present(mapvc, animated: true)
    }
    
    
    @IBAction func didTapButtonVolunteer(_ sender: Any) {
        let vvc = storyboard?.instantiateViewController(identifier: "vv-vc") as! VolunteerViewController
        present(vvc, animated: true)
    }
    
    
    @IBAction func didTapButtonHotline(_ sender: Any) {
        let hotvc = storyboard?.instantiateViewController(identifier: "hot-vc") as! HotlineViewController
        present(hotvc, animated: true)
    }
    
    @IBAction func didTapButtonAllServices(_ sender: Any) {
        let allvc = storyboard?.instantiateViewController(identifier: "es-vc") as! EveryServiceViewController
        present(allvc, animated: true)
    }
    
    @IBAction func didTapButtonCreateResource(_ sender: Any) {
        let crvc = storyboard?.instantiateViewController(identifier: "cr-vc") as! CreateResourceViewController
        present(crvc, animated: true)
    }
    
    @IBAction func didTapButtonAboutUs(_ sender: Any) {
        let abtusvc = storyboard?.instantiateViewController(identifier: "au-vc") as! AboutUsViewController
        present(abtusvc, animated: true)
    }
    
    @IBAction func didTapButtonAsk(_ sender: Any) {
        let aaqvc = storyboard?.instantiateViewController(identifier: "aaq-vc") as! AskAQuestionViewController
        present(aaqvc, animated: true)
    }
    @IBAction func didTapButtonChatBot(_ sender: Any) {
        let cbvc = storyboard?.instantiateViewController(identifier: "cb-vc") as! ChatBotViewController
        present(cbvc, animated: true)
    }
    
    @IBAction func didTapButtonSettings(_ sender: Any) {
        let upvc = storyboard?.instantiateViewController(identifier: "up-vc") as! UserProfileViewController
        present(upvc, animated: true)
    }
    
    @IBAction func didTapButtonTerms(_ sender: Any) {
        let tacvc = storyboard?.instantiateViewController(identifier: "tac-vc") as! TermsAndConditionsViewController
        present(tacvc, animated: true)
    }
    
    @IBAction func didTapButtonPrivacy(_ sender: Any) {
        let ppvc = storyboard?.instantiateViewController(identifier: "pp-vc") as! PrivacyPolicyViewController
        present(ppvc, animated: true)
    }
    
    @IBAction func didTapButtonHelp(_ sender: Any) {
        let htuvc = storyboard?.instantiateViewController(identifier: "htu-vc") as! HowtoUseViewController
        present(htuvc, animated: true)
    }
    @IBAction func didTapButtonHelp2(_ sender: Any) {
        let htuvc = storyboard?.instantiateViewController(identifier: "htu-vc") as! HowtoUseViewController
        present(htuvc, animated: true)
    }
    
    @IBAction func menuTapped(_sender: Any) {
        if menuOut == false {
            leading.constant = 280
            logoImage.isHidden = false
            trailing.constant = -280
            menuOut = true
            
        } else {
            leading.constant = 0
            logoImage.isHidden = true
            trailing.constant = 0
            menuOut = false
        }
    }
    
    @IBOutlet weak var lblStatus: UILabel!
//    @IBAction func emailVerfication(_ sender: Any) {
//        let user = Auth.auth().currentUser
//        Auth.auth().currentUser?.sendEmailVerification { error in
//            if(error != nil) {
//                self.lblStatus.text = "Error"
//                print(error)
//                return
//            }
//            self.lblStatus.text = "Email sent!!"
//        }
//    }
//            
        @IBAction func logoutAccount(_ sender: Any) {
            let firebaseAuth = Auth.auth()
          do {
            try firebaseAuth.signOut()
          } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
          }
            self.lblStatus.text = "Signed out!"
            let hvc = storyboard?.instantiateViewController(identifier: "h-vc") as! HomeViewController
            present(hvc, animated: true)
            
            
        }
    
    @IBAction func forgetPassPressed(_ sender: Any) {
        let fpvc = storyboard?.instantiateViewController(identifier: "fp-vc") as! ForgetPasswordViewController
        present(fpvc, animated: true)
    }
    
    @IBAction func emailVerification(_ sender: Any) {
        Auth.auth().currentUser?.sendEmailVerification { error in
            if(error != nil) {
                self.lblStatus.text = "Error"
                print(error)
                return
            }
            self.lblStatus.text = "Email sent!"
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
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


