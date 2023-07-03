//
//  NosePinPage.swift
//  GIVAApplication
//
//  Created by R93 on 20/06/23.
//

import UIKit

class NosePinPage: UIViewController {

    var nosePinImg = [UIImage(named:"n-1"),UIImage(named:"n-2"),UIImage(named:"n-3"),UIImage(named:"n-4"),UIImage(named:"n-5"),UIImage(named:"n-6"),UIImage(named:"n-7"),UIImage(named:"n-8"),UIImage(named:"n-9"),UIImage(named:"n-10"),UIImage(named:"n-11"),UIImage(named:"n-12"),UIImage(named:"n-13"),UIImage(named:"n-14"),UIImage(named:"n-15"),UIImage(named:"n-16"),UIImage(named:"n-17"),UIImage(named:"n-18"),UIImage(named:"n-19"),UIImage(named:"n-20")]
    var discription = ["Silver Coiled Hoop Nose Ring","Oxidised Silver Bottle Green Nose Pin","Golden Minimal Nose Ring","Oxidised Silver Flower Nose Pin","Oxidised Silver Nose Pin","Oxidised Silver Mandala Nose Pin","Golden half-Moon Nose Pin","Golden Zircon Nose Ring","Oxidised Silver Boho Round Nose Pin","Oxidised Silver Pearl leaf Nose Pin","Golden Ziecon Sparkly Nose Ring","Oxidised Silver Nose Ring","Oxidised Silver Pink Nose Pin","Oxidised Silver Black Nose Pin","Golden Flower Nose Ring","Oxidised Silver Square Nose Pin","golden Nose Pin","Golden Zircon Nose Ring","Oxidised Bead Fliwer Nose Ring","Oxidised Silver Boho Round Nose Pin"]
    var nosePinPrice = ["599","499","599","999","799","699","1099","599","799","699","799","599","499","999","899","799","1399","699","1399","899"]
    @IBOutlet weak var nosePinCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
}

extension NosePinPage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nosePinImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = nosePinCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! nosePinCell
        cell.nosePinImg.image = nosePinImg[indexPath.row]
        cell.discriptionLbel.text = discription[indexPath.row]
        cell.priceLabel.text = nosePinPrice[indexPath.row]
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 171, height: 242)
    }
    
    
}
