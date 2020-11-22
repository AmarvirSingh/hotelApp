//
//  ViewController.swift
//  Hotel
//
//  Created by Amarvir Mac on 20/11/20.
//  Copyright © 2020 Amarvir Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self.city{
            return cityDetails.count
        }
        else {
            return hotelDetails.count
        }
      
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.city{
            return self.cityDetails[row]
        }
       else {
            //*************
            tempHotelname = hotelDetails[row]
            //*****************
            return self.hotelDetails[row]
        }
       
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.city{
            hotelDetails.removeAll()
            addressDetails.removeAll()
            for i in details{
                if i.cityName == cityDetails[row]{
                    hotelDetails.append(i.hotelName)
                    addressDetails.append(i.hotelAddress)
                }
            }
            hotel.reloadAllComponents()
        }
        else {
            tempaddress = returnAddress(p: hotelDetails[row])
           tempimage = returnImage(img: hotelDetails[row])
            tempRent = returnRent(rent:hotelDetails[row])
        }
      
    }
    // this functionm will retuen the rent of the hotel
    func returnRent(rent:String)->String{
        for i in details{
                   if i.hotelName == rent{
                    return i.rent
                   }
               }
               return ""
        
        
    }
    
    
    
    // this function return the hotel address which ever hotel is selected in the picker view
    func returnAddress(p:String) -> String {
        for i in details{
            if i.hotelName == p {
                return i.hotelAddress
            }
        }
        return ""
    }
    
    // this function will fill the Array and set tempImages with image names from the DATA
    func returnImage(img:String) ->String{
        for i in details {
            if i.hotelName == img{
                tempimage = i.image1
                tempimage2 = i.image2
                tempImage3 = i.image3
                tempImage4 = i.image4
                tempImage5 = i.image5
                imageDetails.append(i.image1)
                imageDetails.append(i.image2)
                imageDetails.append(i.image3)
                imageDetails.append(i.image4)
                imageDetails.append(i.image5)
                return i.image1
            }
        }
        return ""
        
    }
    
    
    
    //***************************************************
    @IBOutlet weak var hotel: UIPickerView!
    @IBOutlet weak var city: UIPickerView!
   
    //*****************************************************
   
    // theese are the user defined  data which may be needed to store data and pass these varuiables to another view controller
    var tempHotelname = ""
    var tempRent = ""
    var tempimage = ""
    var tempimage2 = ""
    var tempImage3 = ""
    var tempImage4 = ""
    var tempImage5 = ""
    var tempaddress = ""
        // this is the array of File Objects
    var details = [File]()
    
    // filling these arrays to start the picker veiw
    var cityDetails = ["Brampton","Pembroke"]
    var hotelDetails = ["Newton Villa", "Fairfield Inn", "Days Inn", "Comfort Inn"]
    var addressDetails = ["ooooooo"]  // filling anyhting because these are refilled by picker view
    var imageDetails = ["oooo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
        
        
        
        hotel.delegate = self
        hotel.dataSource = self
        city.delegate = self
        city.dataSource = self
        
    }
    
    // function to fill data
    func fillData()
    {
        details.append(File(cityName: "Brampton", hotelName: "Newton Villa", hotelAddress: "8 Merrydale Ct,Brampton,ON,Canada",rent:"50", image1: "newton1", image2: "newton2", image3: "newton3", image4: "newton4", image5: "newton5"))
        details.append(File(cityName: "Brampton", hotelName: "Fairfield Inn", hotelAddress: "150 Westcreek Boulevard,Brampton,ON,Canada",rent:"70", image1: "fair1", image2: "fair2", image3: "fair3", image4: "fair4", image5: "fair5"))
        details.append(File(cityName: "Brampton", hotelName: "Days Inn", hotelAddress: "260,Queen Street East,Brampton,ON,Canada", rent:"60", image1: "day1", image2: "day2", image3: "day3", image4: "day4", image5: "day5"))
        details.append(File(cityName: "Brampton", hotelName: "Comfort Inn", hotelAddress: "5 Rutherford Road South,Brampton,Canada",rent:"55.5", image1: "comfort1", image2: "comfort2", image3: "comfort3", image4: "comfort4", image5: "comfort5"))
        details.append(File(cityName: "Pembroke", hotelName: "MiddleGate Hotel", hotelAddress: "43 Main Street,Pembroke,ON,Canada",rent:"76.9", image1: "middle1", image2: "middle2", image3: "middle3", image4: "middle4", image5: "middle5"))
        details.append(File(cityName: "Pembroke", hotelName: "Lamphy Hall Hotel", hotelAddress: "Upper Lamphy Hall, pembroke, canada",rent:"98.25", image1: "lamphy1", image2: "lamphy2", image3: "lamphy3", image4: "lamphy4", image5: "lamphy5"))
       
    }
    
    
    

    @IBAction func showDetails(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "detailsViewController") as! detailsViewController
        vc.hotelName = tempHotelname
        vc.hotelAdd = tempaddress
        vc.imageName = tempimage
        vc.imageName2 = tempimage2
        vc.imageName3 = tempImage3
        vc.imageName4 = tempImage4
        vc.imageName5 = tempImage5
        vc.hotelRent = tempRent
        
        //*******OR WE CAN PASS ARRAY**************
       /*
        vc.arrayImage = imageDetails
       */
        
        //*****************************************
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

