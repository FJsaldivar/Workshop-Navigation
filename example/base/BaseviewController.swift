//
//  BaseViewController.swift
//
//  Created by Francisco Javier Saldivar Rubio on 09/05/22.
//

import UIKit

class BaseviewController: UIViewController {

    private var buttonNext: UIButton
    private let color: UIColor
    private let strtitle: String

    init(color: UIColor, title: String) {
        self.color = color
        self.strtitle = title
        buttonNext = .init()
        super.init(nibName: nil, bundle: nil)
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        defaultBackButton()
        configureComponents()
    }

    func defaultBackButton() {
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain,
                                            target: self,
                                            action: #selector(self.onBack(_:)))

        self.navigationItem.leftBarButtonItem = newBackButton
    }

    func configureComponents() {
        view.backgroundColor = color
        self.title = strtitle
        buttonNext.setTitle("Siguiente", for: .normal)
        buttonNext.setTitleColor(.black, for: .normal)
        configureButton()
    }
    
    private func configureButton() {
        buttonNext.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonNext)
        
        buttonNext.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        buttonNext.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonNext.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        buttonNext.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
        buttonNext.addTarget(self, action: #selector(self.toNexButton), for: .touchUpInside)
    }

    @objc func toNexButton() {
        print("implement code")
    }
    
    @objc func onBack(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
}
