//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Kaiya Takahashi on 2022-05-04.
//  Copyright © 2022 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var countryIcon: String?
    var countryCity: String?
    var temperature: Double?
    var summary: String?
    
    lazy var countryTextLabel: UILabel = {
        let countryTL = UILabel()
        countryTL.text = "Country"
        countryTL.font = UIFont.boldSystemFont(ofSize: 25)
        countryTL.translatesAutoresizingMaskIntoConstraints = false
        return countryTL
    }()
    
    lazy var countryIconLabel: UILabel = {
        let countryIL = UILabel()
        countryIL.text = countryIcon
        countryIL.font = countryIL.font.withSize(25)
        countryIL.translatesAutoresizingMaskIntoConstraints = false
        return countryIL
    }()
    
    lazy var cityTextLabel1: UILabel = {
        let cityTL = UILabel()
        cityTL.text = "City"
        cityTL.font = UIFont.boldSystemFont(ofSize: 25)
        cityTL.translatesAutoresizingMaskIntoConstraints = false
        return cityTL
    }()
    
    lazy var cityTextLabel2: UILabel = {
        let cityTL = UILabel()
        cityTL.text = countryCity
        cityTL.font = cityTL.font.withSize(25)
        cityTL.translatesAutoresizingMaskIntoConstraints = false
        return cityTL
    }()

    lazy var temperatureTextLabel1: UILabel = {
        let tempTL = UILabel()
        tempTL.text = "Temperature"
        tempTL.font = UIFont.boldSystemFont(ofSize: 25)
        tempTL.translatesAutoresizingMaskIntoConstraints = false
        return tempTL
    }()
    
    lazy var temperatureTextLabel2: UILabel = {
        let tempTL = UILabel()
        let strTemp: String = String(temperature!)
        tempTL.text = strTemp
        tempTL.font = tempTL.font.withSize(30)
        tempTL.translatesAutoresizingMaskIntoConstraints = false
        return tempTL
    }()
    
    lazy var summaryTextLabel1: UILabel = {
        let sumTL = UILabel()
        sumTL.text = "Summary"
        sumTL.font = UIFont.boldSystemFont(ofSize: 25)
        sumTL.translatesAutoresizingMaskIntoConstraints = false
        return sumTL
    }()
    
    lazy var summaryTextLabel2: UILabel = {
        let sumTL = UILabel()
        sumTL.text = summary
        sumTL.font = sumTL.font.withSize(30)
        sumTL.translatesAutoresizingMaskIntoConstraints = false
        return sumTL
    }()
    
    lazy var verticalSV: UIStackView = {
        let vsv = UIStackView(arrangedSubviews: [countryTextLabel, countryIconLabel, cityTextLabel1, cityTextLabel2, temperatureTextLabel1, temperatureTextLabel2, summaryTextLabel1, summaryTextLabel2])
        vsv.translatesAutoresizingMaskIntoConstraints  = true
        vsv.axis = .vertical
        vsv.distribution = .fillEqually
        vsv.alignment = .center
        vsv.spacing = 10
        vsv.translatesAutoresizingMaskIntoConstraints = false
        return vsv
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        view.addSubview(verticalSV)
        NSLayoutConstraint.activate([
            verticalSV.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            verticalSV.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6),
            verticalSV.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            verticalSV.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
        ])
    }
    
    init(_ city: City) {
        switch city.name {
        case "Vancouver":
            countryIcon = "🇨🇦"
            countryCity = city.name
            temperature = city.precipitation
            summary = city.summary
            break
        case "Tokyo":
            countryIcon = "🇯🇵"
            countryCity = city.name
            temperature = city.precipitation
            summary = city.summary
            break
        case "Verona":
            countryIcon = "🇮🇹"
            countryCity = city.name
            temperature = city.precipitation
            summary = city.summary
            break
        case "Sao Paulo":
            countryIcon = "🇧🇷"
            countryCity = city.name
            temperature = city.precipitation
            summary = city.summary
            break
        default:
            countryIcon = "🇰🇷"
            countryCity = city.name
            temperature = city.precipitation
            summary = city.summary
        }
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.countryCity = nil
        self.countryIcon = nil
        self.temperature = nil
        self.summary = nil
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
