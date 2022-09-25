//
//  ViewController.swift
//  Weathery-App
//
//  Created by macbook on 25/09/2022.
//

import UIKit

class WeatherViewController: UIViewController {

    let backgroudImage = UIImageView()
    let locationButton = UIButton()
    let searchButton = UIButton()
    let searchBar = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layOut()
    }


}

extension WeatherViewController {
    func style(){
        backgroudImage.translatesAutoresizingMaskIntoConstraints = false
        backgroudImage.image = UIImage(named: "day-background")
        backgroudImage.contentMode = .scaleAspectFill
        
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setBackgroundImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        locationButton.tintColor = .label
        
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setBackgroundImage(UIImage(systemName: "magnifyingglass" ), for: .normal)
        searchButton.tintColor = .label
        
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.font = UIFont.preferredFont(forTextStyle: .title1)
        searchBar.placeholder = "Search"
        searchBar.textAlignment = .right
        searchBar.borderStyle = .roundedRect
        searchBar.backgroundColor = .systemFill
    }
   
    func layOut(){
        
        //Without this, the view dont work
        view.addSubview(backgroudImage)
        view.addSubview(locationButton)
        view.addSubview(searchButton)
        view.addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            backgroudImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroudImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroudImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroudImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            locationButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            locationButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            locationButton.widthAnchor.constraint(equalToConstant: 40),
            locationButton.heightAnchor.constraint(equalToConstant: 40),
            
            searchButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchButton.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: -1),
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalToSystemSpacingAfter: locationButton.trailingAnchor, multiplier: 1),
            searchButton.leadingAnchor.constraint(equalToSystemSpacingAfter: searchBar.trailingAnchor, multiplier: 1),
        ])
        
    }
}
