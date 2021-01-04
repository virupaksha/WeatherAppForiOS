//
//  APIService.swift
//  WeatherApp
//
//  Created by Virupaksh Futane on 1/3/21.
//

import Foundation

class APIService: NSObject, API {
    
    func getWeatherInfoByCityName(cityName: String, completionHandler:@escaping(Weather) -> ()) {
        let urlString = "\(APIConstants.baseUrl)=\(cityName)&appid=\(APIConstants.apiKey)"
        
        URLSession.shared.dataTask(with: URL(string: urlString)!) { (data, respomse, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let weatherData = try! jsonDecoder.decode(Weather.self, from: data)
                completionHandler(weatherData)
            }
        }.resume()
    }
}
