//
//  Weathergetter.swift
//  meteo
//
//  Created by yves binda on 4/19/17.
//  Copyright © 2017 yvesbinda. All rights reserved.
//

import Foundation

class WeatherGetter {
    
    private let openWeatherMapBaseURL = "htpp://api.openweathermap.org/data/2.5/weather"
    private let openweatherMapAPIKey = "3d4e2a3afa8faf9b0d2a36ae57979669"
    
    func getWeather (city:String, completion:@escaping ((CityInfo)->Void)) {
        
        let session = URLSession.shared
        let enc = city.addingPercentEncoding(withAllowedCharacters:CharacterSet.alphanumerics)
        let weatherRequestURL = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(enc!)&APPID=\(openweatherMapAPIKey)")!
    
        
        let dataTask = session.dataTask(with: weatherRequestURL as URL) {
            (data: Data?, response: URLResponse?, error: Error?) in
            if let error = error {
                print("Error:\n\(error)")
            } else {
                do {
                    let json = try JSONSerialization.jsonObject(with:data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [String:Any]
                    let info = CityInfo(dictionary:json)
                    completion(info)
                } catch {
                    NSLog("JSON Parsing error")
                    let dataString = String(data: data!, encoding: String.Encoding.utf8)
                    print("Human-readable data:\n\(dataString!)")
                }
            }
       }
     dataTask.resume()
  }
}
