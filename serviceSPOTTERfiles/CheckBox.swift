//
//  CheckBox.swift
//  homelessAID
//
//  Created by Arushi Sharmaa on 8/19/21.
//

import UIKit

class CheckBox: UIButton {
        // Images
        let checkedImage = UIImage(systemName: "checkmark.square")! as UIImage
        let uncheckedImage = UIImage(systemName: "square")! as UIImage
        
        // Bool property
        var isChecked: Bool = false {
            didSet {
                if isChecked == true {
                    self.setImage(checkedImage, for: UIControl.State.normal)
                } else {
                    self.setImage(uncheckedImage, for: UIControl.State.normal)
                }
            }
        }
            
        override func awakeFromNib() {
            self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
            self.isChecked = false
        }
            
        @objc func buttonClicked(sender: UIButton) {
            if sender == self {
                isChecked = !isChecked
            }
        }
    }
