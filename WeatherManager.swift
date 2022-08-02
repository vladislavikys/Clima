//
//  WeatherManager.swift
//  Clima
//
//  Created by vlad zarya on 2.08.22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
//    &q=London
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=deb08e43d6e7cc60e64c3c4f38b4abbb&units=metric"
    
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
