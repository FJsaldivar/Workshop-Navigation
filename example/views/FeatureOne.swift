//
//  FeatureOne.swift
//  example
//
//  Created by Francisco Javier Saldivar Rubio on 09/05/22.
//

import Foundation
import UIKit

class FeatureOne: BaseviewController {
    
    override func toNexButton() {
        navigationController?.pushViewController(FeatureTwo(color: .purple, title: "Caracteristica 2"), animated: true)
    }
}


class FeatureTwo: BaseviewController {
    
    override func toNexButton() {
        let feature3 = Feature3(color: .systemPink, title: "Caracteristica 3")
        navigationController?.pushViewController(feature3, animated: true)
        
    }
}


class Feature3: BaseviewController {
    
    override func toNexButton() {
        let feature4 = Feature4(color: .systemGreen, title: "Caracteristica 3")
        navigationController?.pushViewController(feature4, animated: true)
    }
}


class Feature4: BaseviewController {
    
    override func onBack(_ sender: UIBarButtonItem) {
        let feature2 = navigationController?.viewControllers.first(where: { view in
            type(of: view) == FeatureOne.self
        })!

        navigationController?.popToViewController(feature2!, animated: true)
    }
    
}
