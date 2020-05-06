//
//  WelcomeController.swift
//  CurrencyCheck
//
//  Created by MICHAEL ADU DARKO on 5/5/20.
//  Copyright © 2020 Bronzy. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    //MARK: - Properties
    
    let bg: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .mainBackgroundColor
        view.layer.cornerRadius = 12
        return view
    }()
    
    
    
    private let titleLabel: UILabel = {
        let label = CustomLabel(title: "Welcome")
        label.font = UIFont(name: "Anton-Regular", size: 40)
        label.textColor = .white
        return label
    }()
    
//    private let infoLabel: UILabel = {
//        let label = CustomLabel(title: "Currency Check helps you check money values\nfrom different countries")
//        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.thin)
//        label.textColor = .green
//        label.textAlignment = .center
//        return label
//    }()
    
    
    //MARK:- Lifcycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //MARK: - Helpers
    func configureUI(){
        view.backgroundColor =  .white
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        bg.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: bg.leftAnchor, constant: 20).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true
        
//        bg.addSubview(infoLabel)
//        infoLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
//        infoLabel.centerYAnchor.constraint(equalTo: bg.centerYAnchor).isActive = true
//        infoLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        infoLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
    }
}
