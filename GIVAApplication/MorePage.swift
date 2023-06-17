//
//  MorePage.swift
//  GIVAApplication
//
//  Created by R93 on 13/06/23.
//

import UIKit

class MorePage: UIViewController,UITableViewDelegate,UITableViewDataSource,UIImagePickerControllerDelegate &  UINavigationControllerDelegate{
   
    
    @IBOutlet weak var tv: UITableView!
    
    @IBOutlet weak var addImageButton: UIButton!
    
    @IBOutlet weak var img: UIImageView!
    var name = ["Order History","Wishlist","GIVA Cash","GIVA Promo Coins","Register Warranty","Store locator","Saved Address"]
    var image = [UIImage(named:"15.1"),UIImage(named:"15.2"),UIImage(named:"15.3"),UIImage(named:"15.4"),UIImage(named:"15.5"),UIImage(named:"15.6"),UIImage(named:"15.7")]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func addImageButtonAction(_ sender: Any) {
        showalert()
        addImageButton.isHidden = true
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        img.image = info[.editedImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
    
    func showalert()
    {
        let alert = UIAlertController(title: "Your choise", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction.init(title: "Gallery", style: .default, handler: { _ in
            self.openGallery()
        }))
        alert.addAction(UIAlertAction.init(title: "Camera", style: .default, handler: nil))
        present(alert,animated: true,completion: nil)
    }
    func openGallery()
    {
     let gallery = UIImagePickerController()
        gallery.delegate = self
      gallery.sourceType = .photoLibrary
        gallery.allowsEditing = true
        present(gallery,animated: true,completion: nil)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tv.dequeueReusableCell(withIdentifier: "cell", for: indexPath
        ) as! TableViewCell
        cell.img.image = image[indexPath.row]
        cell.label.text = name[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

 

}
