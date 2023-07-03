//
//  WishlistPage.swift
//  GIVAApplication
//
//  Created by R93 on 28/06/23.
//

import UIKit

class WishlistPage: UIViewController {

    @IBOutlet weak var backToHomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backToHomeButton.layer.cornerRadius = 20
        backToHomeButton.layer.masksToBounds = true
    }
    

    @IBAction func backToHomeButtonaction(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(identifier: "HomePage") as! HomePage
        navigationController?.pushViewController(naviget, animated: true)
    }
    

}
