//
//  EarringPage.swift
//  GIVAApplication
//
//  Created by R93 on 17/06/23.
//

import UIKit

class EarringPage: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
   
     var img = [UIImage(named:"E-1"),UIImage(named:"E-2"),UIImage(named:"E-3"),UIImage(named:"E-4"),UIImage(named:"E-5"),UIImage(named:"E-6"),UIImage(named:"E-7"),UIImage(named:"E-8"),UIImage(named:"E-9"),UIImage(named:"E-10"),UIImage(named:"E-11"),UIImage(named:"E-12"),UIImage(named:"E-13"),UIImage(named:"E-14"),UIImage(named:"E-15"),UIImage(named:"E-16"),UIImage(named:"E-17"),UIImage(named:"E-18"),UIImage(named:"E-19"),UIImage(named:"E-20")]
     
    var discription = ["Anushka Sharma Silver Ziroon Earrings","Rose Gold Leaves Earrings","Rose Gold Circle Earrings","White Pearl Earrings","Silver Shine Zircon Earrings","Rose Gold Drop Earrings","Silver Black Earrings","Silver Zircon Emerald Studs","Silver flower Earrings","Rose Gold Earrings","Rose Gold Princess Earrings","Anukhka Sharma Rose Gold Earrings","manali's Silver Earrings","Silver Zircon Mini Earrings","Rose Gold Creascent Affair Earrings","Silver Zircon Bold Earrings","Silver Heart Earrings","Spear Silver Earrings","Rose Gold Earrings","Black Pearl Earrings"]
    
    var price = ["1399","899","1499","1499","899","1499","2299","1699","999","1099","999","1499","1999","1399","1399","1799","899","1399","999","1299"]
    @IBOutlet weak var cv: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell16
        cell.img.image = img[indexPath.row]
        cell.discription.text = discription[indexPath.row]
        cell.price.text = price[indexPath.row]
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 171, height: 247)
    }

}
