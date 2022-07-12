//
//  HotlineViewController.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/10/21.
//

import UIKit

class HotlineViewController: UIViewController {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    @IBOutlet weak var leading: NSLayoutConstraint!
    var menuOut = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func makeCallMH(_ sender: AnyObject) {
        let urlMH:NSURL = NSURL(string: "tel://18002608000")!
        UIApplication.shared.open(urlMH as URL)
    }
    
    @IBAction func makeCallDV(_ sender: AnyObject) {
        let urlDV:NSURL = NSURL(string: "tel://18007997233")!
        UIApplication.shared.open(urlDV as URL)
    }
    
    @IBAction func makeCallEP(_ sender: AnyObject) {
        let urlEP:NSURL = NSURL(string: "tel://18006333446")!
        UIApplication.shared.open(urlEP as URL)
    }
    
    @IBAction func makeCallHT(_ sender: AnyObject) {
        let urlHT:NSURL = NSURL(string: "tel:/18883737888")!
        UIApplication.shared.open(urlHT as URL)
    }
    
    @IBAction func makeCallSA(_ sender: AnyObject) {
        let urlSA:NSURL = NSURL(string: "tel:/18006564673")!
        UIApplication.shared.open(urlSA as URL)
    }
    
    @IBAction func makeCallSP(_ sender: AnyObject) {
        let urlSP:NSURL = NSURL(string: "tel:/18002738255")!
        UIApplication.shared.open(urlSP as URL)
    }
    
    @IBAction func makeCallYR(_ sender: AnyObject) {
        let urlYR:NSURL = NSURL(string: "tel:/18007862929")!
        UIApplication.shared.open(urlYR as URL)
    }
    
    @IBAction func makeCallCOA(_ sender: AnyObject) {
        let urlCOA:NSURL = NSURL(string: "tel:/15129724663")!
        UIApplication.shared.open(urlCOA as URL)
    }
    
    @IBAction func makeCallVC(_ sender: AnyObject) {
        let urlVC:NSURL = NSURL(string: "tel:/18002738255")!
        UIApplication.shared.open(urlVC as URL)
    }
    
    @IBAction func makeCallVAH(_ sender: AnyObject) {
        let urlVAH:NSURL = NSURL(string: "tel:/18008493597")!
        UIApplication.shared.open(urlVAH as URL)
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
    @IBAction func didTapButtonHelp2(_ sender: Any) {
        let htuvc = storyboard?.instantiateViewController(identifier: "htu-vc") as! HowtoUseViewController
        present(htuvc, animated: true)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
