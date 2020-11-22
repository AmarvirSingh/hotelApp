//
//  File.swift
//  Hotel
//
//  Created by Amarvir Mac on 21/11/20.
//  Copyright © 2020 Amarvir Mac. All rights reserved.
//

import Foundation
class File{
    var cityName:String
    var hotelName:String
    var hotelAddress:String
    var rent:String
    var image1:String
    var image2:String
    var image3:String
    var image4:String
    var image5:String
    
    init(cityName:String, hotelName:String,hotelAddress:String, rent:String, image1:String,image2:String,image3:String,image4:String,image5:String) {
        self.cityName = cityName
        self.hotelName = hotelName
        self.hotelAddress = hotelAddress
        self.rent = rent
        self.image1 = image1
        self.image2 = image2
        self.image3 = image3
        self.image4 = image4
        self.image5 = image5
    }
    
    
}
