//
//  WeatherCellCollectionViewCell.swift
//  WeatherApp
//
//  Created by Yuliia Engman on 1/31/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit
import ImageKit

class WeatherCellCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var highWeatherLabel: UILabel!

    @IBOutlet weak var lowWeatherLabel: UILabel!
    
    public func configureCell(weather: DailyDatum) {
        dateLabel.text = String(weather.time)
        weatherImage.image = UIImage(named: weather.icon)
        highWeatherLabel.text = String("High: \(Int(weather.temperatureHigh)) F")
        lowWeatherLabel.text = String("Low: \(Int(weather.temperatureLow)) F")
    }
}

//import UIKit
//import ImageKit
//
//class CountryCollectionViewCell: UICollectionViewCell {
//
//    @IBOutlet weak var countryImage: UIImageView!
//    @IBOutlet weak var countryNameLabel: UILabel!
//    @IBOutlet weak var capitalLabel: UILabel!
//    @IBOutlet weak var populationLabel: UILabel!
//
//    public func configureCell(for country: Country) {
//        countryNameLabel.text = country.name
//        capitalLabel.text = country.capital
//        populationLabel.text = "Population: \(country.population.description)"
//
//        let imageURL = "https://www.countryflags.io/\(country.alpha2Code)/shiny/64.png"
//
//        countryImage.getImage(with: imageURL) {(result) in
//            switch result {
//            case .failure:
//                DispatchQueue.main.async {
//                    self.countryImage.image = UIImage(systemName: "photo.fill")
//                }
//            case .success(let countryImage):
//                DispatchQueue.main.async {
//                    self.countryImage.image = countryImage
//                }
//            }
//        }
//    }
//}
//
