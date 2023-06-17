//
//  CreateAccount.swift
//  GIVAApplication
//
//  Created by R93 on 17/04/23.
//

import UIKit

class CreateAccount: UIViewController {

    @IBOutlet weak var img: UIImageView!
   
    @IBOutlet weak var femaleButton: UIButton!
    
    @IBOutlet weak var otherButton: UIButton!
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var sendOtpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton()
        button.setTitle("button", for: .normal)
        button.backgroundColor = .systemPink
        //img.layer.cornerRadius = img.frame.width/2
        setbuttons()
        
    }
   func setbuttons()
    {
        femaleButton.layer.borderColor = UIColor.gray.cgColor
        femaleButton.layer.borderWidth = 1
        femaleButton.layer.cornerRadius = 15
        femaleButton.layer.masksToBounds = true


        maleButton.layer.borderColor = UIColor.gray.cgColor
        maleButton.layer.borderWidth = 1
        maleButton.layer.cornerRadius = 15
        maleButton.layer.masksToBounds = true

        otherButton.layer.borderColor = UIColor.gray.cgColor
        otherButton.layer.borderWidth = 1
        otherButton.layer.cornerRadius = 15
        otherButton.layer.masksToBounds = true
        
          sendOtpButton.layer.borderColor = UIColor.black.cgColor
          sendOtpButton.layer.borderWidth = 1
          sendOtpButton.layer.cornerRadius = 5
          sendOtpButton.layer.masksToBounds = true

   }
    
    
    @IBAction func genderButtonsAction(_ sender: UIButton) {
        if femaleButton.isSelected
        {
            femaleButton.backgroundColor = UIColor.systemPink
        }
    }
    
}
