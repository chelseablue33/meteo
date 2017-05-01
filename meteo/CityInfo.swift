//
//  CityInfo.swift
//  meteo
//
//  Created by yves binda on 4/29/17.
//  Copyright © 2017 yvesbinda. All rights reserved.
//

import UIKit

class CityInfo:NSObject {
    var name = ""
    var country = ""
    var latitude = 0.0
    var longitude = 0.0
    var weatherMain = ""
    // Temperature will be in Kelvin
    var temperature = 0.0
    var humidity = 0.0
    var pressure = 0.0
    
    var tempFahrenheit:Int {
        let res = Int((temperature * (9.0 / 5.0)) - 459.67)
        return res
    }
    
    init(dictionary:[String:Any]) {
        // Name
        if let txt = dictionary["name"] as? String {
            self.name = txt
        }
        // Country
        if let dic = dictionary["sys"] as? [String:Any], let txt = dic["country"] as? String {
            self.country = txt
        }
        // Latitude & Longitude
        if let dic = dictionary["coord"] as? [String:Any] {
            if let val = dic["lat"] as? Double {
                self.latitude = val
            }
            if let val = dic["lon"] as? Double {
                self.longitude = val
            }
        }
        // Description
        if let arr = dictionary["weather"] as? [[String:Any]] {
            if let dic = arr.first, let txt = dic["main"] as? String {
                self.weatherMain = txt
            }
        }
        // Temperature, Humidity & Pressure
        if let dic = dictionary["main"] as? [String:Any] {
            if let val = dic["temp"] as? Double {
                self.temperature = val
            }
            if let val = dic["humidity"] as? Double {
                self.humidity = val
            }
            if let val = dic["pressure"] as? Double {
                self.pressure = val
            }
        }
    }
    
    override var description: String {
        return "City: \(name), Temperature: \(temperature)"
    }
    
}

/*
{   "coord":{"lon":-80.19,"lat":25.77},
    "weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],
    "base":"stations",
    "main":{"temp":300.37,"pressure":1020,"humidity":65,"temp_min":299.15,"temp_max":301.15},
    "visibility":16093,
    "wind":{"speed":6.7,"deg":120},
    "clouds":{"all":75},
    "dt":1493470680,
    "sys":{"type":1,"id":689,"message":0.0033,"country":"US","sunrise":1493462694,"sunset":1493509885},
    "id":4164138,
    "name":"Miami",
    "cod":200}
*/
