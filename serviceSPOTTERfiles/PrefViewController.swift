//
//  PrefViewController.swift
//  VolunteerAPP
//
//  Created by Arushi Sharma on 8/2/21.
//

import UIKit

class PrefViewController: UIViewController {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    @IBOutlet weak var leading: NSLayoutConstraint!
    
    var menuOut = false
    
    @IBOutlet var prefButtons: [UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: false)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func handleSelected(_ sender: UIButton) {
        prefButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
            button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
        })
        }
    }
    
    @IBAction func foodTapped(_ sender: Any) {
        let fsvc = storyboard?.instantiateViewController(identifier: "fs-vc") as! FoodSearchingViewController
        present(fsvc, animated: true)
    }
    @IBAction func shelterTapped(_ sender: Any) {
        let sheltvc = storyboard?.instantiateViewController(identifier: "ss-vc") as! ShelterSearchingViewController
        present(sheltvc, animated: true)
    }
    @IBAction func allServicesTapped(_ sender: Any) {
        let allservc = storyboard?.instantiateViewController(identifier: "ca-vc") as! CatagorizeALLViewController
        present(allservc, animated: true)
    }
    
    @IBAction func clothingTapped(_ sender: Any) {
        let rsvc = storyboard?.instantiateViewController(identifier: "cs-vc") as! ClothingSearchingViewController
        present(rsvc, animated: true)
    }
    
    @IBAction func healthCareTapped(_ sender: Any) {
        let hcvc = storyboard?.instantiateViewController(identifier: "hcs-vc") as! HealthCareSearchingViewController
        present(hcvc, animated: true)
    }
    
    //MENU ITEMS
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
    @IBAction func didTapButtonHotline(_ sender: Any) {
        let hotvc = storyboard?.instantiateViewController(identifier: "hot-vc") as! HotlineViewController
        present(hotvc, animated: true)
    }
    
    
    @IBAction func didTapButtonVolunteer(_ sender: Any) {
        let vvc = storyboard?.instantiateViewController(identifier: "vv-vc") as! VolunteerViewController
        present(vvc, animated: true)
    }
    
    @IBAction func didTapButtonAllServices(_ sender: Any) {
        let allvc = storyboard?.instantiateViewController(identifier: "es-vc") as! EveryServiceViewController
        present(allvc, animated: true)
    }
    
    @IBAction func didTapButtonCreateResource(_ sender: Any) {
        let crvc = storyboard?.instantiateViewController(identifier: "cr-vc") as! CreateResourceViewController
        present(crvc, animated: true)
    }
    
    @IBAction func didTapButtonAboutUss(_ sender: Any) {
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
