//
//  WeatherTabBarControllerViewController.swift
//  WeatherApp
//
//  Created by Yuliia Engman on 1/31/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

class WeatherTabBarControllerViewController: UITabBarController {
    
    private lazy var searchWeatherController: SearchWeatherController = {
           let viewcontroller = SearchWeatherController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 0)
        return viewcontroller
       }()
    
    private lazy var favoriteImageController: FavoriteImageController = {
    let viewcontroller = FavoriteImageController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Favorite", image: UIImage(systemName: "star"), tag: 1)
        return viewcontroller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [searchWeatherController, favoriteImageController]
    }

}
