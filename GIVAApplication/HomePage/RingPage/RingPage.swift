//
//  RingPage.swift
//  GIVAApplication
//
//  Created by R93 on 17/06/23.
//

import UIKit

class RingPage: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var cv: UICollectionView!
    
    
    var img = [UIImage(named:"18.1"),UIImage(named:"18.2"),UIImage(named:"18.3"),UIImage(named:"18.4"),UIImage(named:"18.5"),UIImage(named:"18.6"),UIImage(named:"18.7"),UIImage(named:"18.8"),UIImage(named:"18.9"),UIImage(named:"19.0"),UIImage(named:"19.1"),UIImage(named:"19.2"),UIImage(named:"19.3"),UIImage(named:"19.4"),UIImage(named:"19.5"),UIImage(named:"19.6"),UIImage(named:"19.7"),UIImage(named:"19.8"),UIImage(named:"19.9"),UIImage(named:"20.0")]
    var discription = ["Sterling Silver Rose Gold Knot Adjustable Ring for Women and Girls","Giva Sterling Silver Adjustable Minimal Pearl Ring","Sterling Silver Zircon Sparkling Loop Ring","Silver Fibonacci Ring, Adjustable | Gifts for Women and Girls","Giva Floral Diamond Ring","Giva Silver Zircon Layered Ring","Adjustable Sterling Silver Zircon Rhodium Plated Ring","Giva Sterling Silver One Size Rose Gold Pink Heart Ring","Giva Sterling Silver Adjustable Zircon Shining Flower Ring","Giva Rose Gold Heart Melting Chain Ring","Silver Meant to Be Couple Rings","Giva Sterling Silver Adjustable Elegant Love Couples Rings","Silver Infinity Heart Ring","Sterling Silver Rose Gold Finally Found You Ring","Sterling Silver Rose Gold Finally Found You Ring","925 Sterling Silver Forever Love Couple Rings For Men And Women","GIVA 925 Sterling Silver Eternity Couple Band, Adjustable","Giva Silver Embracing Heart Couple Rings","Silver Rhomb Couple Band","Silver Timeless Couple Bands"]
    
    var price = ["1599","1599","1799","1999","1599","3299","1599","1799","1699","2399","1999","1799","1899","2099","1499","1599","1699","1999","1999","1989"]
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell15
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
        return CGSize (width: 171, height: 247)
    }
}
