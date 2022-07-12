//
//  LoginAccountViewController.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/15/21.
//

import UIKit
import Firebase
class LogInViewController: UIViewController {

    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    @IBOutlet weak var leading: NSLayoutConstraint!
    
    
    var menuOut = false
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
         view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginAccount(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailField.text!, password: passwordField.text!) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
            if(error != nil) {
                strongSelf.lblStatus.text = "Error. Check your password/email again."
                print(error)
                return
            }
            strongSelf.lblStatus.text = "Login Success!"
        }
        
    }
    
    
    @IBAction func tappedMenuButton(_ sender: Any) {
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

    //MARKER UINavigationBarDelegate methods
    
  
    
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
    @IBAction func didTapButtonHome(_ sender: Any) {
        let hvc = storyboard?.instantiateViewController(identifier: "h-vc") as! HomeViewController
        present(hvc, animated: true)
    }
    @IBAction func didTapButtonGuest(_ sender: Any) {
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
    @IBAction func didTapButtonHelp2(_ sender: Any) {
        let htuvc = storyboard?.instantiateViewController(identifier: "htu-vc") as! HowtoUseViewController
        present(htuvc, animated: true)
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
    @IBAction func forgetPassPressed(_ sender: Any) {
        let fpvc = storyboard?.instantiateViewController(identifier: "fp-vc") as! ForgetPasswordViewController
        present(fpvc, animated: true)
    }
    
    @IBAction func didTapButtonTerms(_ sender: Any) {
        let tacvc = storyboard?.instantiateViewController(identifier: "tac-vc") as! TermsAndConditionsViewController
        present(tacvc, animated: true)
    }
    
    @IBAction func didTapButtonPrivacy(_ sender: Any) {
        let ppvc = storyboard?.instantiateViewController(identifier: "pp-vc") as! PrivacyPolicyViewController
        present(ppvc, animated: true)
    }
    
        
    }

