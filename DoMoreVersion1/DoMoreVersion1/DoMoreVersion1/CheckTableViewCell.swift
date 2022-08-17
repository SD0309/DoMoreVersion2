//
//  CheckTableViewCell.swift
//  DoMoreVersion1
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class CheckTableViewCell: UITableViewCell {
    @IBOutlet weak var checkbox: Checkbox!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func checked (_ sender: Checkbox){
        updateChecked()
    }
    func set (title: String, checked:Bool){
        label.text = title
        checkbox.checked = checked
        updateChecked()
    }
    
    private func updateChecked() {
        let attributedString = NSMutableAttributedString(string: label.text!)
        
        if checkbox.checked {
          attributedString.addAttribute(.strikethroughStyle, value: 2, range: NSMakeRange(0, attributedString.length-1))
        } else {
          attributedString.removeAttribute(.strikethroughStyle, range: NSMakeRange(0, attributedString.length-1))
        }
        
        label.attributedText = attributedString

    }
}
