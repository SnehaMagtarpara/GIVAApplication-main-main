//
//  ManRingPage.swift
//  GIVAApplication
//
//  Created by R93 on 20/06/23.
//

import UIKit

class ManRingPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    

    
    @IBOutlet weak var cbv: UICollectionView!
    
    
    var img = [UIImage(named:"m-1"),UIImage(named:"m-2"),UIImage(named:"m-3"),UIImage(named:"m-4"),UIImage(named:"m-5"),UIImage(named:"m-6"),UIImage(named:"m-7"),UIImage(named:"m-8"),UIImage(named:"m-9"),UIImage(named:"m-10"),UIImage(named:"m-11"),UIImage(named:"m-12"),UIImage(named:"m-13"),UIImage(named:"m-14"),UIImage(named:"m-15"),UIImage(named:"m-16"),UIImage(named:"m-17"),UIImage(named:"m-18"),UIImage(named:"m-19"),UIImage(named:"m-20")]
    var discription = ["Silver Solitaire Band For Him","Silver Keep Shining Ring For Him","Golden Emperor Ring For Him","Oxidised Silver Aqumarine Ring For Him","Silver Glistening Liner Men's Ring","Silver Zircon Striped Ring For Him","Silver Rope Ring For Him","Oxidise Ring For Him","Silver Golden Square Of Life Ring For Him","Golden Stylishly You Ring For Him","Golden Ring For Him","Golden Warrior Prince Ring For Him","Golden Ring For Him","Silver Glistening Liner Men's Ring","Golden Ring For Men","Silver Ring Black Diamind For him","Golden Ring For Him","Silver Shine Ring For Him","Silver Golden Square Of Life Ring For Him","Golden Stylishly You Ring For Him"]
   
    var price = ["4599","2099","2099","1799","1699","4599","1299","2599","4999","999","4599","1699","2299","2099","2599","2199","2999","4899","3099","3699"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cbv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell18
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
