//
//  HomePage.swift
//  GIVAApplication
//
//  Created by R93 on 05/06/23.
//

import UIKit

class HomePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    var image = [UIImage(named:"2.1"),UIImage(named:"2.2"),UIImage(named:"2.3"),UIImage(named:"2.4"),UIImage(named:"2.5"),UIImage(named:"2.7"),UIImage(named:"2.8"),UIImage(named:"2.9"),UIImage(named:"3.0")]
    var name = ["PENDANTS","RINGS","EARRINGS","BRACELETS","MENA","COUPLE RINGS","COIN","NOSE PINS","CHAIN","TOE RINGS"]

       var image2 = [UIImage(named:"3.1"),UIImage(named:"3.2"),UIImage(named:"3.3"),UIImage(named:"3.4"),UIImage(named:"3.5")]
    
    var image3 = [UIImage(named:"4.1"),UIImage(named:"4.2"),UIImage(named:"4.3"),UIImage(named:"4.4"),UIImage(named:"4.5"),UIImage(named:"4.6"),UIImage(named:"4.7"),UIImage(named:"4.8"),UIImage(named:"4.9"),UIImage(named:"5.0")]
    var discription = ["Silver Yin And Yang Energy Pendant With Link Chain","Silver Serentity Sphere Pendant With link Chain","Silver Stylish Hexagon Pendant With link Chain","Golden Rectangular Beauty Pendant With Link Chain","Golden Modern Beauty Pendant With Link Chain","Rose Gold Classic Glory Pendany With Link Chain","Silver Aura Of Elegance pendant With Link Chain","Silver Pyramid Ring","Silver Rope Ring for HIM/Her","Silver Classic Link Ring for Him/Her"]
    var price = ["₹2999","₹2599","₹1999","₹2799","₹2999","₹2799","₹2499","₹1499","₹1299","₹1299"]
    
    var image4 = [UIImage(named:"5.1"),UIImage(named:"5.2"),UIImage(named:"5.3"),UIImage(named:"5.4"),UIImage(named:"0"),UIImage(named:"5.6"),UIImage(named:"5.7"),UIImage(named:"5.8"),UIImage(named:"5.6"),UIImage(named:"6.0")]
    
    var image5 = [UIImage(named:"6.1"),UIImage(named:"6.2")]
    var gifts = ["Gifte fot Her","Gifts for Him"]
    
    var image6 = [UIImage(named:"7.1"),UIImage(named:"7.2"),UIImage(named:"7.3")]
    
    var image7 = [UIImage(named:"8.1"),UIImage(named:"8.2"),UIImage(named:"8.3"),UIImage(named:"8.4"),UIImage(named:"8.5"),UIImage(named:"8.6"),UIImage(named:"8.7"),UIImage(named:"8.8"),UIImage(named:"8.9"),UIImage(named:"9.0")]
    var discription2 = ["Silver Classic Solitaire Ring","Anushka Sharma Silver Dear Heart Necklace","Anushka Sharma Silver Studded Rose Ring","Anushka Sharma Silver Queens Necklace","Anushka Sharma Silver Zircon Earrings","Anushka Sharma Silver Zircon pendant with Link Chain","Anushka Sharma Rose Gold Solitaire ring","Anushka Sharma Rose Gold Supple Bracelet","Anushka Sharma Rose Gold Heart Necklace","Rose Gold Princess Earrings"]
    var price2 = ["₹2599","₹1799","₹1999","₹1599","₹1399","₹1599","₹2799","₹4599","₹1999","₹1699"]
    
    var image8 = [UIImage(named:"10.1"),UIImage(named:"10.2"),UIImage(named:"10.3"),UIImage(named:"10.4")]
    var wear = ["Office Wear","Weddung Wear","Everyday Wear","Party Wear"]
    
    var image9 = [UIImage(named:"11.1"),UIImage(named:"11.2"),UIImage(named:"11.3"),UIImage(named:"11.4"),UIImage(named:"11.5")]
    var name9 = ["Aaradhya","Disha","Hridya","Priyanshu","Advika"]
    var details = ["Love this one...i have Gifted it to myself from my first salary it's a memento","Giva.co's fine silver jewelleery collection is like, totally amazing.The designs are like,super unique and the quality is like , beyond outstanding.","It was a gift for my mom,she loved the design and style. Will surely continue purchasing from here","Order my future  arrange marriage wife,hope she will love it on oue first meeting","Tis very pretty and suitable for daile use.Also I really loved the packaging. Thanks GIVA💖"]
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv3: UICollectionView!
    @IBOutlet weak var cv4: UICollectionView!
    @IBOutlet weak var cv5: UICollectionView!
    @IBOutlet weak var cv6: UICollectionView!
    @IBOutlet weak var cv7: UICollectionView!
    @IBOutlet weak var cv8: UICollectionView!
    @IBOutlet weak var cv9: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.layer.cornerRadius = 20
        img.layer.masksToBounds = true
      
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv
        {
            return image.count
        }
        else if collectionView == self.cv2
        {
            return image2.count
        }
        else if collectionView == self.cv3
        {
            return image3.count
        }
        else if collectionView == self.cv4
        {
            return image4.count
        }
        else if collectionView == self.cv5
        {
            return image5.count
            
        }
        else if collectionView == self.cv6
        {
            return image6.count
        }
        else if collectionView == self.cv7
        {
            return image7.count
        }
        else if collectionView == self.cv8
        {
            return image8.count
        }
        else
        {
            return image9.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv
        {
            let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            cell.img.image = image[indexPath.row]
            cell.nameLabel.text = name[indexPath.row]
            return cell
        }
        else if collectionView == self.cv2
        {
            let cell2 = cv2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.img2.image = image2[indexPath.row]
            
            return cell2
        }
        else if collectionView == self.cv3
        {
            let cell3 = cv3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.img3.image = image3[indexPath.row]
            cell3.discriptionLabel.text = discription[indexPath.row]
            cell3.pricelabel.text = price[indexPath.row]
            
            return cell3
            
        }
        else if collectionView == self.cv4
        {
            let cell4 = cv4.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionViewCell4
            cell4.img4.image = image4[indexPath.row]
            return cell4
            
        }
        else if collectionView == self.cv5
        {
            let cell5 = cv5.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! CollectionViewCell5
            cell5.img5.image = image5[indexPath.row]
            cell5.label.text = gifts[indexPath.row]
            cell5.layer.cornerRadius = 20
            cell5.layer.masksToBounds = true
            return cell5
            
            
        }
        else if collectionView == self.cv6
        {
            let cell6 = cv6.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! CollectionViewCell6
            cell6.img6.image = image6[indexPath.row]
            return cell6
        }
        else if collectionView == self.cv7
        {
            let cell7 = cv7.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as! CollectionViewCell7
            cell7.img7.image = image3[indexPath.row]
            cell7.discriptionLabel2.text = discription2[indexPath.row]
            cell7.priceLabel2.text = price2[indexPath.row]
            
            return cell7
            
        }
        else if collectionView == self.cv8
        {
            let cell8 = cv8.dequeueReusableCell(withReuseIdentifier: "cell8", for: indexPath) as! CollectionViewCell8
            cell8.img8.image = image8[indexPath.row]
            cell8.waerLabel.text = wear[indexPath.row]
            return cell8
        }
        else
        {
            let cell9 = cv9.dequeueReusableCell(withReuseIdentifier: "cell9", for: indexPath) as! CollectionViewCell9
            cell9.img9.image = image9[indexPath.row]
            cell9.nameLabel9.text = name9[indexPath.row]
            cell9.details.text = details[indexPath.row]
             return cell9
        }
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv
        {
            return CGSize(width: 131, height: 160)
        }
        else if collectionView == self.cv2
        {
            return CGSize(width: 356, height: 128)
        }
        else if collectionView == self.cv3
        {
            return CGSize(width: 153, height: 240)
        }
        else if collectionView == self.cv4
        {
            return CGSize(width: 372, height: 143)
        }
        else if collectionView == self.cv5
        {
            return CGSize(width: 208, height: 156)
        }
        else if collectionView == self.cv6
        {
            return CGSize(width: 372, height: 128)
        }
        else if collectionView == self.cv7
        {
            return CGSize(width: 178, height: 230)
            
        }
        else if collectionView == self.cv8
        {
            return CGSize(width: 175, height: 245)
        }
        else
        {
            return CGSize(width: 371, height: 366)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.cv
        {
            if indexPath.row == 0
            {
                navigation()
            }
            else if indexPath.row == 1
            {
                navigation1()
            }
            else if indexPath.row == 1
            {
                navigation2()
            }
            else
            {
                
            }
           
           
        }
    }
    
    
    
    
    
     func navigation()
     {
         let naviget = storyboard?.instantiateViewController(withIdentifier: "PendantList") as! PendantList
         navigationController?.pushViewController(naviget, animated: true)
     }
    func navigation1()
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "RingPage") as! RingPage
        navigationController?.pushViewController(naviget, animated: true)
    }
    func navigation2()
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "EarringPage") as! EarringPage
        navigationController?.pushViewController(naviget, animated: true)
    }

    

}
