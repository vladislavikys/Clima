//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
 //https://api.openweathermap.org/data/2.5/weather?appid=deb08e43d6e7cc60e64c3c4f38b4abbb&units=metric

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextFiled: UITextField!
    
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextFiled.delegate = self
    }

    @IBAction func searchPreseed(_ sender: Any) {
       searchTextFiled.endEditing(true)
       print(searchTextFiled.text!)
       
        
    }
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextFiled.endEditing(true)
//        print(searchTextFiled.text!)
        return true
        // печатем введенны город
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        }else{
            textField.placeholder = "Type something"
            return false
        }
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField){
        if let city = searchTextFiled.text {
            weatherManager.fetchWeather(cityName: city)
        }
        
    }
}

