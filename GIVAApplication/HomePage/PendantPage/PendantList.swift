//
//  PendantList.swift
//  GIVAApplication
//
//  Created by R93 on 13/06/23.
//

import UIKit

class PendantList: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var addCartButton: UICollectionView!
    
    @IBOutlet weak var cv: UICollectionView!
    
    var img = [UIImage(named:"16.1"),UIImage(named:"16.2"),UIImage(named:"16.3"),UIImage(named:"16.4"),UIImage(named:"16.5"),UIImage(named:"16.6"),UIImage(named:"16.7"),UIImage(named:"16.8"),UIImage(named:"16.9"),UIImage(named:"17.1"),UIImage(named:"17.2"),UIImage(named:"17.3"),UIImage(named:"17.4"),UIImage(named:"17.5"),UIImage(named:"17.6"),UIImage(named:"17.7"),UIImage(named:"17.8"),UIImage(named:"17.9"),UIImage(named:"18.0")]
    
    var discription = ["Anushka Sharma Golden Star Constellation Neckless","Anushka Sharma Golden Star pendent with link chain","Anushka Sharma Rose Gold chain","Silver Drizzle Drop Pendant with Link Chain","Anushka Sharma Silver Solitaire Heart Pendant with Link Chain","Silver Drizzle Drop Pendant with Link Chain","Silver Zircon Tree of Life Pendant with Link Chain","Rose Gold Minimal Zircon Pendant with Link Chain","Silver Drizzle Drop Pendant with Link Chain","Silver Zircon Twist Necklace with Link Chain","Personalised Eternal Pendant with Box Chain","Silver Infinity Heart Necklace","Anushka Sharma Pink Quartz Necklace","Silver Zircon  of Life Pendant with Link Chain","Rose Gold Minimal Zircon Pendant with Link Chain","Anushka Sharma Silver Queens Necklace","Rose Gold Deer Heart Necklace","Silver Coeur Pendant with Box Chain","GIVA Silver Pearl Pendant With Chain","Rose Gold Music Pendant with Link Chain"]
    
    var price = ["1699","1599","1799","1999","1599","3299","1599","1799","1699","2399","2999","1799","1899","2099","1499","1599","1699","1999","1999","1989"]
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
  
    @IBAction func addCartButtonAction(_ sender: Any) {
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell14
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
    func showalert()
    {
        
    }

    
    

}
