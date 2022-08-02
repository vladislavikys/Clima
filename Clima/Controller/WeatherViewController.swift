//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextFiled.delegate = self
    }

    @IBAction func searchPreseed(_ sender: Any) {
       searchTextFiled.endEditing(true)
       print(searchTextFiled.text!)
        // печатем введенны город и удаляем его из TF
    }
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextFiled.endEditing(true)
        print(searchTextFiled.text!)
        return true
        // печатем введенны город и удаляем его из TF
    }
}

