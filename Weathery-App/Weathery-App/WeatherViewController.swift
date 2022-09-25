//
//  ViewController.swift
//  Weathery-App
//
//  Created by macbook on 25/09/2022.
//

import UIKit

class WeatherViewController: UIViewController {

    let backgroudImage = UIImageView()
    
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
    }
   
    func layOut(){
        
        //Without this, the view dont work
        view.addSubview(backgroudImage)
        
        NSLayoutConstraint.activate([
            backgroudImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroudImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroudImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroudImage.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
}
