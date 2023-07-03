//
//  ToeRingPage.swift
//  GIVAApplication
//
//  Created by R93 on 20/06/23.
//

import UIKit

class ToeRingPage: UIViewController {

    @IBOutlet weak var toeRingCollectionView: UICollectionView!
    
    var toeRingImage = [UIImage(named:"t-1"),UIImage(named:"t-2"),UIImage(named:"t-3"),UIImage(named:"t-4"),UIImage(named:"t-5"),UIImage(named:"t-6"),UIImage(named:"t-7"),UIImage(named:"t-8"),UIImage(named:"t-9"),UIImage(named:"t-10"),UIImage(named:"t-11"),UIImage(named:"t-12"),UIImage(named:"t-13"),UIImage(named:"t-14"),UIImage(named:"t-15"),UIImage(named:"t-16"),UIImage(named:"t-17"),UIImage(named:"t-18"),UIImage(named:"t-19"),UIImage(named:"t-20")]
    var toeRingDiscription = ["Giva Sterling Silver Dual Flower Toe Ring","Silver Flower Toe Rings","Oxidised Silver Grace Toe Ring","Silver Zircon Minimal adjustable Toe ring","Silver Shimmer Flower Toe Ring","silver Crescent Flower Toe Ring","Silver Pink Toe Ring","Silver Pink Stone Beautiful leaf Tor Rings","Oxidised Silver Wishbone Toe Ring","Oxidised Silver Blooming Toe Ring","Oxidised Silver Toe Ring","Oxidised Silver Love Knot Toe Ring","Silver Green Stone Toe Ring","Oxidised Silver  Toe Ring","Oxidised Silver Grace Toe Ring","Silver Formal Fancy Toe Ring","Silver Toe Ring","Silver Heart Toe Ring","Oxidised Simple Toe Ring","Oxidised Flower Toe Ring"]
    var toeRingPrice = ["1599","1899","1699","2149","1399","2299","1699","1499","1599","1699","1499","1599","1399","1499","1399","1299","1399","1199","1399","1249"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

// MARK = TOE RING COLLECTION VIEW

extension ToeRingPage: UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return toeRingImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = toeRingCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ToeRingCell
        cell.toeRingImg.image = toeRingImage[indexPath.row]
        cell.toeRingDiscriptionLabel.text = toeRingDiscription[indexPath.row]
        cell.toeRingPriceLabel.text = toeRingPrice[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 171, height: 242)
    }
    
}

