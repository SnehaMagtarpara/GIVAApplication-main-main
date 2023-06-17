//
//  ViewController.swift
//  GIVAApplication
//
//  Created by R93 on 13/04/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   
   
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var createAccountButtob: UIButton!
    
   
    var image = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3")]
    var label = ["Minimal,Affordable Silver Jewellery","1000+ Premium designs handcrafted for you","Trusted by 5000.000+ divas acress India"]

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.borderColor = UIColor.white.cgColor
        logInButton.layer.borderWidth = 1
        logInButton.layer.cornerRadius = 5
        logInButton.layer.masksToBounds = true
        createAccountButtob.layer.cornerRadius = 5
        createAccountButtob.layer.masksToBounds = true
}

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return image.count

}
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.img.image = image[indexPath.row]
        cell.label.text = label[indexPath.row]
        return cell

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 500, height: 1017)
    }
    
    
    @IBAction func logInButtonAction(_ sender: UIButton) {
       navigetion()
    }
    @IBAction func createAccountButtonAction(_ sender: UIButton) {
        navigetion()
    }
    func navigetion()
    {
        
        let naviget = storyboard?.instantiateViewController(withIdentifier:"LogInPage") as! LogInPage
            navigationController?.pushViewController(naviget, animated: true)
    }
    
}

