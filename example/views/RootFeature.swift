//
//  RootFeature.swift
//  example
//
//  Created by Francisco Javier Saldivar Rubio on 09/05/22.
//

import UIKit

final class RootFeature: BaseviewController {
    
    override func viewDidLoad() {
        configureComponents()
    }

    override func toNexButton() {
        navigationController?.pushViewController(FeatureOne(color: .red, title: "Caracteristica 1"), animated: true)
    }
}
