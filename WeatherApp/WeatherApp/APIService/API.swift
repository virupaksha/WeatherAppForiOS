//
//  API.swift
//  WeatherApp
//
//  Created by Virupaksh Futane on 1/3/21.
//

import Foundation

protocol API {
    func getWeatherInfoByCityName(cityName:String, completionHandler:@escaping(Weather) -> ())
}
