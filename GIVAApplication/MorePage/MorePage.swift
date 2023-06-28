//
//  MorePage.swift
//  GIVAApplication
//
//  Created by R93 on 13/06/23.
//

import UIKit

class MorePage: UIViewController,UIImagePickerControllerDelegate &  UINavigationControllerDelegate{
    
    var name = ["Order History","Wishlist","GIVA Cash","GIVA Promo Coins","Register Warranty","Store locator","Saved Address"]
    var image = [UIImage(named:"15.1"),UIImage(named:"15.2"),UIImage(named:"15.3"),UIImage(named:"15.4"),UIImage(named:"15.5"),UIImage(named:"15.6"),UIImage(named:"15.7")]
    
    var otherName = ["GIVA Support Center","FDQs","Privacy Policy","Shipping and Handling","Rate GIVA app on App Store","Data Safety","Delete Account"]
    
    @IBOutlet weak var tv2: UITableView!
    @IBOutlet weak var tv: UITableView!
    @IBOutlet weak var addImageButton: UIButton!
    @IBOutlet weak var img: UIImageView!
    
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
    
    func navigationOrderHistory()
    {
        let naviget = storyboard?.instantiateViewController(identifier:"OrderhistoryPage") as! OrderhistoryPage
        navigationController?.pushViewController(naviget, animated: true)
    }
}

// MARK = TABLE VIEW

extension MorePage: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tv
        {
            return image.count
        }
        else
        {
            return otherName.count
        }
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.tv
        {
            let cell = tv.dequeueReusableCell(withIdentifier: "cell", for: indexPath
            ) as! TableViewCell
            cell.img.image = image[indexPath.row]
            cell.label.text = name[indexPath.row]
            return cell
        }
        else
        {
            let cell2 = tv2.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! TableViewCell2
            cell2.nameLabel.text = otherName[indexPath.row]
            return cell2
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == self.tv
        {
            return 59
        }
        else
        {
            return 55
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            navigationOrderHistory()
        }
    }
}

