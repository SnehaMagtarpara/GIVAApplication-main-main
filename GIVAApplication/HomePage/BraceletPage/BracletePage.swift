//
//  BracletePage.swift
//  GIVAApplication
//
//  Created by R93 on 17/06/23.
//

import UIKit

class BracletePage: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    

    @IBOutlet weak var cv: UICollectionView!
    
    var img = [UIImage(named:"b-1"),UIImage(named:"b-2"),UIImage(named:"b-3"),UIImage(named:"b-4"),UIImage(named:"b-5"),UIImage(named:"b-6"),UIImage(named:"b-7"),UIImage(named:"b-8"),UIImage(named:"b-9"),UIImage(named:"b-10"),UIImage(named:"b-11"),UIImage(named:"b-12"),UIImage(named:"b-13"),UIImage(named:"b-14"),UIImage(named:"b-15"),UIImage(named:"b-16"),UIImage(named:"b-17"),UIImage(named:"b-18"),UIImage(named:"b-19"),UIImage(named:"b-20")]
    
    var discription = ["Anushka Sharma Rose Gold Supple Bracelet","Anushka Sharma Rose Gold Deer bracelet","Anushka Sharma Rose Gold Crown bracelet", "Anushka Sharma Rose Gold Flower Charm bracelet","Rose Gold Bubble Bracelet","Rose Gold Slender Bracelet","Oxidise Silver Crescent Moon Bracelet","Silver Interlocked Heart Duo Bracelet","Rose Gold Dual Heart Bracelet","Oxidise Silver Threaded Sun Bracelet","Rose Gold Cubic Crystal Bracelet","Oxidise Silver Leaf Bracelet","Rose Gold Love Bracelet","Anushka Sharma Silver Evil Eye clover Bracelet","Silver Zircon Excess Bracelet","Rose Gold Sparkling Zircon Bracelet","Silver Infinity Zircon Bracelet","Silver Classy Link Bracelet","Silver Rose Gold Dual Entangle Bracelet","Silver Woven Leaf Bracelet"]
    
    var price = ["4599","2099","2099","1799","1699","4599","1299","2599","4999","999","4599","1699","2299","2099","2599","2199","2999","4899","3099","3699"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell17
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
        CGSize(width: 171, height: 247)
    }

    

}
