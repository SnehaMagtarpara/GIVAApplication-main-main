//
//  LogInPage.swift
//  GIVAApplication
//
//  Created by R93 on 13/04/23.
//

import UIKit

class LogInPage: UIViewController {
    
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var requestOtpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       setTextField()
      setButton()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let abc = segue.destination as! RequestOtp
        abc.a = phoneNumberTextField.text!
       
    }
    func  setButton()
    {
        requestOtpButton.layer.cornerRadius = 5
        requestOtpButton.layer.masksToBounds = true
    }
    func setTextField()
     {
         requestOtpButton.layer.cornerRadius = 5
         requestOtpButton.layer.masksToBounds = true
     }
    
    
    @IBAction func requestOtpButtonAction(_ sender: UIButton) {
        
        if phoneNumberTextField.text?.count ?? 0 != 10
        {
            //showalert()
            navigation()
        }
       // savealert()
        
        
    }
    func showalert()
    {
        
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Enter your number in 10 digit", style: .default, handler: nil))
        present(alert,animated:true,completion: nil)
    }
    func savealert()
    {
        let alert = UIAlertController(title: "save", message: "save", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "save", style: .default, handler: { _ in
            UserDefaults.standard.set(self.phoneNumberTextField.text!, forKey: "userName")
            self.performSegue(withIdentifier:"cell" , sender: self)
        }))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func navigation()
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "RequestOtp") as! RequestOtp
        navigationController?.pushViewController(naviget, animated: true)
    }
    
}
