//
//  ChainPage.swift
//  GIVAApplication
//
//  Created by R93 on 20/06/23.
//

import UIKit

class ChainPage: UIViewController {
    
    @IBOutlet weak var chainCollectionView: UICollectionView!
    
    var chainImage = [UIImage(named:"c-1 1"),UIImage(named:"c-2 1"),UIImage(named:"c-3 1"),UIImage(named:"c-4 1"),UIImage(named:"c-5"),UIImage(named:"c-6"),UIImage(named:"c-7"),UIImage(named:"c-8"),UIImage(named:"c-9"),UIImage(named:"c-10"),UIImage(named:"c-11")]
    var chainDiscription = ["Golden Sparkling Delight Chain","Golden Gilded Glamour Chain","Golden Tranquil Waters Chain","Golden Soft Whispers Chain","Golden Ethereal beauty Link Chain","Golden Summer's Song Chain","Golden twilight Chain For Him","Silver Unity Link Chain","Silver metal Mingle Chain For Him"]
    var chainPrice = ["3999","7999","1999","3999","3999","1499","3799","1499","2499","1999","2099"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK = CHAIN COLLECTION VIEW

extension ChainPage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chainImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = chainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ChainCollectionViewCell
        cell.chainImg.image = chainImage[indexPath.row]
        cell.chainDiscription.text = chainDiscription[indexPath.row]
        cell.chainPrice.text = chainPrice[indexPath.row]
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 171, height: 242
        )
    }
}
