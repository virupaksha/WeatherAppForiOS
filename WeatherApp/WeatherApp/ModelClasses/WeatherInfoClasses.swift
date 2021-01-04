//
//  WeatherInfoClasses.swift
//  WeatherApp
//
//  Created by Virupaksh Futane on 1/3/21.
//

import Foundation
struct Weather : Codable {
    let cityName:String
    let tempInfo:TemperatureInfo
    
    
    enum CodingKeys : String, CodingKey {
        case cityName = "name"
        case tempInfo = "main"
    }
    
}

struct TemperatureInfo : Codable {
    let feelsLike:Float
    let humidity:Int
    let temp:Float
    
    enum CodingKeys : String, CodingKey {
        case feelsLike = "feels_like"
        case humidity = "humidity"
        case temp = "temp"
    }
    
}
