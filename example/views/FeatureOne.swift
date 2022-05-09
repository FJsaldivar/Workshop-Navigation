//
//  FeatureOne.swift
//  example
//
//  Created by Francisco Javier Saldivar Rubio on 09/05/22.
//

import Foundation
import UIKit

final class FeatureOne: BaseviewController {
    // Agrega vista al stack
    // Quedando [RootFeature, featureOne, featureTwo]
    override func toNexButton() {
        navigationController?.pushViewController(FeatureTwo(color: .purple, title: "Caracteristica 2"), animated: true)
    }
}


final class FeatureTwo: BaseviewController {
    // Agrega vista al stack
    // Quedando [RootFeature, featureOne, featureTwo, feature3]
    override func toNexButton() {
        let feature3 = Feature3(color: .systemPink, title: "Caracteristica 3")
        navigationController?.pushViewController(feature3, animated: true)
        
    }
}


final class Feature3: BaseviewController {
    // Agrega vista al stack
    // Quedando [RootFeature, featureOne, featureTwo, feature3, feature4]
    override func toNexButton() {
        let feature4 = Feature4(color: .systemGreen, title: "Caracteristica 4")
        navigationController?.pushViewController(feature4, animated: true)
    }
}


final class Feature4: BaseviewController {
    // Crea un nuevo stack de vista
    // cambiando de [RootFeature, featureOne, featureTwo, feature3, feature4]
    // ha [feature5, Feature6]
    override func toNexButton() {
        let feature5 = Feature5(color: .magenta, title: "Caracteristica 5")
        let feature6 = Feature6(color: .cyan, title: "Caracteristica 6")
        navigationController?.setViewControllers([feature5, feature6], animated: true)
    }

    // Filtra una vista del stack para volver a ella
    override func onBack(_ sender: UIBarButtonItem) {
        let feature2 = navigationController?.viewControllers.first(where: { view in
            type(of: view) == FeatureOne.self
        })!

        navigationController?.popToViewController(feature2!, animated: true)
    }
    
}


final class Feature5: BaseviewController {
    // Evita que se agrege el botón back en el navbar
    override func viewDidLoad() {
        super.configureComponents()
    }

    // esto regresa a la raiz
    override func toNexButton() {
        navigationController?.pushViewController(Feature6(color: .cyan, title: "Caracteristica 6"), animated: true)
    }

}


final class Feature6: BaseviewController {
    // Regresa a la vista reazi, en este caso será veature 5
    override func toNexButton() {
        navigationController?.popToRootViewController(animated: true)
    }

}

