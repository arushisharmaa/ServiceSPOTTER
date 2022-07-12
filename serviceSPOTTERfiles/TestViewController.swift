//
//  TestViewController.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/10/21.
//

import UIKit
import SwiftUI 
class TestViewController: UIViewController {
    @IBOutlet weak var theContainer2 : UIView!
    @IBOutlet weak var theContainer : UIView!
        override func viewDidLoad() {
            super.viewDidLoad()
            let childView = UIHostingController(rootView: CatagorizeALL())
            addChild(childView)
            childView.view.frame = theContainer.bounds
            theContainer.addSubview(childView.view)
           
                let childView2 = UIHostingController(rootView: SwiftUIView())
                addChild(childView2)
                childView2.view.frame = theContainer2.bounds
                theContainer2.addSubview(childView2.view)
                // Do any additional setup after loading the view.
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
