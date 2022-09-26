//
//  ViewController.swift
//  Weathery-App
//
//  Created by macbook on 25/09/2022.
//

import UIKit

class WeatherViewController: UIViewController {
    let tempreture = UILabel()
    let city = UILabel()
    let WeathCondition = UIImageView()
    let rootStackView = UIStackView()
    let componentsStackView = UIStackView()
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
        
        componentsStackView.translatesAutoresizingMaskIntoConstraints = false
        componentsStackView.spacing = 8
        
        rootStackView.translatesAutoresizingMaskIntoConstraints = false
        rootStackView.axis = .vertical
        rootStackView.alignment = .trailing
        rootStackView.spacing = 8
        
        
        
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setBackgroundImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        locationButton.tintColor = .label
        
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setBackgroundImage(UIImage(systemName: "magnifyingglass" ), for: .normal)
        searchButton.tintColor = .label
        
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.font = UIFont.preferredFont(forTextStyle: .title2)
        searchBar.placeholder = "Search"
        searchBar.textAlignment = .left
        searchBar.borderStyle = .roundedRect
        searchBar.backgroundColor = .systemFill
        
        WeathCondition.translatesAutoresizingMaskIntoConstraints = false
        WeathCondition.image = UIImage(systemName: "sun.min.fill")
        WeathCondition.tintColor = .label
        WeathCondition.contentMode = .scaleAspectFill
        
        tempreture.translatesAutoresizingMaskIntoConstraints = false
        tempreture.text = "20°C"
        tempreture.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        
        city.translatesAutoresizingMaskIntoConstraints = false
        city.text = "Accra"
        city.font = UIFont.preferredFont(forTextStyle: .largeTitle)
       
    }
    
    func layOut(){
        
        //Without this, the view dont work
        view.addSubview(backgroudImage)
        view.addSubview(rootStackView)
        view.addSubview(componentsStackView)
        
        //Adding components to the stack view
        componentsStackView.addArrangedSubview(locationButton)
        componentsStackView.addArrangedSubview(searchBar)
        componentsStackView.addArrangedSubview(searchButton)
        rootStackView.addArrangedSubview(componentsStackView)
        rootStackView.addArrangedSubview(WeathCondition)
        rootStackView.addArrangedSubview(tempreture)
        rootStackView.addArrangedSubview(city)
        
        NSLayoutConstraint.activate([
            
            backgroudImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroudImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroudImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroudImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            //Seconde stack view
            rootStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            view.leadingAnchor.constraint(equalToSystemSpacingAfter: rootStackView.leadingAnchor, multiplier: -1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: rootStackView.trailingAnchor, multiplier: -1),
            
            componentsStackView.leadingAnchor.constraint(equalTo: rootStackView.leadingAnchor),
            componentsStackView.trailingAnchor.constraint(equalTo: rootStackView.trailingAnchor),
            
            
            locationButton.widthAnchor.constraint(equalToConstant: 40),
            locationButton.heightAnchor.constraint(equalToConstant: 40),
            
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            
            WeathCondition.widthAnchor.constraint(equalToConstant: 120),
            WeathCondition.heightAnchor.constraint(equalToConstant: 120),
            
            
            
            
        ])
        
    }
}
