//
//  ChatBotViewController.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/16/21.
//

import UIKit
import AppTrackingTransparency
import WebKit
class ChatBotViewController: UIViewController {
        @IBOutlet weak var logoImage: UIImageView!
        @IBOutlet weak var trailing: NSLayoutConstraint!
        @IBOutlet weak var leading: NSLayoutConstraint!
        @IBOutlet weak var trailing2: NSLayoutConstraint!
        @IBOutlet weak var leading2: NSLayoutConstraint!
        var menuOut = false
        
        @IBOutlet weak var webView: WKWebView!
        override func viewDidLoad() {
            super.viewDidLoad()
            
            webView.load(URLRequest(url: URL(string: "https://servicespotteraustin.github.io/SpottyChatBot/")!))
            // Do any additional setup after loading the view.
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
    @IBAction func didTapButtonHelp2(_ sender: Any) {
        let htuvc = storyboard?.instantiateViewController(identifier: "htu-vc") as! HowtoUseViewController
        present(htuvc, animated: true)
    }
    
        @IBAction func menuTapped(_sender: Any) {
            if menuOut == false {
                leading.constant = 280
                leading2.constant = 280
                logoImage.isHidden = false
                trailing.constant = -280
                trailing2.constant = -280
                menuOut = true
                
            } else {
                leading.constant = 0
                leading2.constant = 0
                logoImage.isHidden = true
                trailing.constant = 0
                trailing2.constant = 0
                menuOut = false
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
