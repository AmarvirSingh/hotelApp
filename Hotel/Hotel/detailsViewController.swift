//
//  detailsViewController.swift
//  Hotel
//
//  Created by Amarvir Mac on 21/11/20.
//  Copyright © 2020 Amarvir Mac. All rights reserved.
//

import UIKit

class detailsViewController: UIViewController {

    //****************
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var address: UITextView!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var rent: UILabel!
    
    //***********************

    var hotelName = ""
    var hotelAdd = ""
    var hotelRent = ""
    var imageName = ""
    var imageName2 = ""
    var imageName3 = ""
    var imageName4 = ""
    var imageName5 = ""
    
    // this will be filled when the array is passed from view controller
    var arrayImage = [""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = hotelName
        address.text = hotelAdd
        image.image = UIImage(named: imageName)
        rent.text = "$ " + hotelRent + " per Night"
        
    }
    
    @IBAction func showMoreImages(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "ImageViewController") as! ImageViewController
       
        // the images are passed from this veiw controller to next view controller
        vc.imageName = imageName
        vc.imageName2 = imageName2
        vc.imageName3 = imageName3
        vc.imageName4 = imageName4
        vc.imageName5 = imageName5
        
        // or we can pass like this >>>>>>>>> here we are passing the names of images which are dtored in arrayImage ARRAY which got filled from previous viewController
        /*
         vc.imageName = arrayImage[0]
         vc.imageName2 = arrayImage[1]
         vc.imageName3 = arrayImage[2]
         vc.imageName4 = arrayImage[3]
         vc.imageName5 = arrayImage[4]
         */
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
