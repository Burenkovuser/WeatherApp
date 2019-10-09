//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Vasilii on 08/10/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeather {
    let temtperature: Double
    let appearnetTemperature: Double
    let humidity: Double
    let pressure: Double
    let icon: UIImage
}

extension CurrentWeather {
var pressureString: String {
    return "\(Int(pressure)) mm"
}
var humidityString: String {
    return "\(Int(humidity)) %"
}
var temperatureString: String {
    return "\(Int(temtperature))˚C"
}
var appeernetTemperantureString: String {
    return "\(Int(appearnetTemperature))˚C"
}
}
