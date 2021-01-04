//
//  ViewController.swift
//  WeatherApp
//
//  Created by Virupaksh Futane on 1/3/21.
//

import UIKit

class ViewController: UIViewController {

    var viewModel:WeatherInfoViewModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel = WeatherInfoViewModel()
        viewModel.fetchWeatherInfoByCity(cityName: "Cologne")
        
        viewModel.weatherInfoAfterQuery = {
            
        }
    }


}

