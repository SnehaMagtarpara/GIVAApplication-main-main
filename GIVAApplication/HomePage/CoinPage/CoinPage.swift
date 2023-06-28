//
//  CoinPage.swift
//  GIVAApplication
//
//  Created by R93 on 20/06/23.
//

import UIKit

class CoinPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var cv: UICollectionView!
    var img = [UIImage(named:"c-1"),UIImage(named:"c-2"),UIImage(named:"c-3"),UIImage(named:"c-4")]
    var discription = ["999 Silver Peacock Beauty Coin-10g","999 Silver Coin - Happy Diwali(5g)","999 Silver Lord Ganesha Coin - 5g","999 Silver Goddess Lakshmi Coin 5g"]
    
    var price = ["1299","799","799","799"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell19
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
