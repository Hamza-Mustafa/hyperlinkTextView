//
//  ViewController.swift
//  hyperlinkTextView
//
//  Created by Hamza Mustafa on 05/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    let phoneNumber = "+18882130259"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let attributedString = NSMutableAttributedString(string: "Just click here to register")
        let url = URL(string: "https://www.apple.com")!

        // Set the 'click here' substring to be the link
        attributedString.setAttributes([.link: phoneNumber], range: NSMakeRange(5, 10))

        self.textView.attributedText = attributedString
        self.textView.isUserInteractionEnabled = true
        self.textView.isEditable = false

        // Set how links should appear: blue and underlined
        self.textView.linkTextAttributes = [
            .foregroundColor: UIColor.blue,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
    }
    
    
    func makePhoneCall() {
        guard let number = URL(string: "tel://" + phoneNumber) else { return }
        UIApplication.shared.open(number)
    }


}

