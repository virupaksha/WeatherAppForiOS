//
//  WeatherInfoViewModel.swift
//  WeatherApp
//
//  Created by Virupaksh Futane on 1/3/21.
//

import Foundation

class WeatherInfoViewModel: NSObject {

    private var apiService:APIService?
    
    private(set) var weatherInfo:Weather!{
        didSet {
            self.weatherInfoAfterQuery()
        }
    }
    
    var weatherInfoAfterQuery:(()->()) = {}
    
    override init() {
        super.init()

        apiService = APIService()
    }
    
    func fetchWeatherInfoByCity(cityName : String?)  {
        
        apiService?.getWeatherInfoByCityName(cityName: cityName!, completionHandler: { [weak self] weather in
            self?.weatherInfo = weather
        })
    }
    
}
