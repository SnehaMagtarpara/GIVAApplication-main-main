//
//  ReelPage.swift
//  GIVAApplication
//
//  Created by R93 on 13/06/23.
//

import UIKit

class ReelPage: UIViewController {

    @IBOutlet weak var shoppingImag: UIImageView!
    @IBOutlet weak var shopNowButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

       setImages()
    }
    
    func setImages()
    {
        image.layer.cornerRadius = 20
        image.layer.masksToBounds = true
        shopNowButton.layer.cornerRadius = 5
        shopNowButton.layer.masksToBounds = true
        shoppingImag.layer.cornerRadius = 25
        
        shoppingImag.layer.masksToBounds = true
    }

}
