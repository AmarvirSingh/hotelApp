//
//  ImageViewController.swift
//  Hotel
//
//  Created by Amarvir Mac on 21/11/20.
//  Copyright © 2020 Amarvir Mac. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    //*********************************
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    //*********************************
    
    var imageName = ""
    var imageName2 = ""
    var imageName3 = ""
    var imageName4 = ""
    var imageName5 = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image1.image = UIImage(named: imageName)
        image2.image = UIImage(named: imageName2)
        image3.image = UIImage(named: imageName3)
        image4.image = UIImage(named: imageName4)
        image5.image = UIImage(named: imageName5)

    }
    
    @IBAction func goHome(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    
}
