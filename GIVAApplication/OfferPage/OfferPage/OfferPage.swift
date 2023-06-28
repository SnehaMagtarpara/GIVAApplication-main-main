//
//  OfferPage.swift
//  GIVAApplication
//
//  Created by R93 on 08/06/23.
//

import UIKit

class OfferPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv3: UICollectionView!
    
    var img = [UIImage(named:"13.1"),UIImage(named:"13.2"),UIImage(named:"13.3"),UIImage(named:"13.4")]
    
    var name = ["Everyday Wear","Party Wear","Office Wear","Wedding Wear"]
    
    var image2 = [UIImage(named:"14.1"),UIImage(named:"14.2"),UIImage(named:"14.3"),UIImage(named:"14.4")]
    var name2 = ["Fine Silver","Rose Gold","Gold","Oxidised Silver"]
    
    var img3 = [UIImage(named:"12.1"),UIImage(named:"12.2"),UIImage(named:"12.3"),UIImage(named:"12.4")]
    var name3 = ["SETS","ANKLETS","CHAINS","NOSEPIN"]
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv
        {
            return img.count
        }
        else  if collectionView == self.cv2
        {
            return image2.count
        }
        else
        {
            return img3.count
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv
        { let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell10
            cell.img.image = img[indexPath.row]
            cell.nameLabel.text = name[indexPath.row]
            return cell
        }
        else if collectionView == self.cv2
        {
            let cell2 = cv2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell12
            cell2.img2.image = image2[indexPath.row]
            cell2.nameLabel.text = name2[indexPath.row]
            cell2.img2.layer.cornerRadius = 80
            
            return cell2
            
        }
        else
        {
            let cell3 = cv3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell13
            cell3.img3.image = img3[indexPath.row]
            cell3.nameLabel3.text = name3[indexPath.row]
            cell3.img3.layer.cornerRadius = 45
            
            
            return cell3
            
            
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv
        {
            return CGSize(width: 182, height: 228)
        }
        else  if collectionView == self.cv2
        {
            return CGSize(width: 177, height: 240)
        }
        else
        {
            return CGSize(width: 105, height: 138)
        }
        
    }
    
    


}
