//
//  ViewController.swift
//  WeatherApp
//
//  Created by Vasilii on 08/10/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lockationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var apperantTemperatureLabel: UILabel!
    @IBOutlet weak var fefreshButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let icon = WeatherIconManager.Rain.image
        let currentWeather = CurrentWeather(temtperature: 10.0, appearnetTemperature: 5.0, humidity: 30, pressure: 750, icon: icon)
        updateUIWhith(currentWeather: currentWeather)
        
        /*
        let urlString = "https://api.darksky.net/forecast/453d809988f0b1b38d1c2dee707619a6/37.8267,-122.4233"
        let baseURL = URL(string: "https://api.darksky.net/forecast/453d809988f0b1b38d1c2dee707619a6/")
        let fullURL = URL(string: "37.8267,-122.4233", relativeTo: baseURL)
        
        let sessioncofiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessioncofiguration)
        
        let request = URLRequest(url: fullURL!)
        let dataTask = session.dataTask(with: fullURL!) { (data, response, error) in
            
        }
        dataTask.resume() */
    }

    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    /*
    func updateUIWhith(currentWeather: CurrentWeather) {
        self.imageView.image = currentWeather.icon
        self.pressureLabel.text = "\(Int(currentWeather.pressure)) mm"
        self.temperatureLabel.text = "\(Int(currentWeather.temtperature))˚C"
        self.apperantTemperatureLabel.text = "\(Int(currentWeather.appearnetTemperature))˚C"
        self.humidityLabel.text = "\(Int(currentWeather.humidity)) %"
    }
    */
    func updateUIWhith(currentWeather: CurrentWeather) {
           self.imageView.image = currentWeather.icon
        self.pressureLabel.text = currentWeather.pressureString
        self.temperatureLabel.text = currentWeather.temperatureString
        self.apperantTemperatureLabel.text = currentWeather.appeernetTemperantureString
        self.humidityLabel.text = currentWeather.humidityString
       }
}
