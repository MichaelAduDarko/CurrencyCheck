//
//  HomeController .swift
//  CurrencyCheck
//
//  Created by MICHAEL ADU DARKO on 5/8/20.
//  Copyright © 2020 Bronzy. All rights reserved.
//

import UIKit

class ConverterController: UIViewController {
    
    //MARK:- Properties
    
    private let  addCountryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.backgroundColor = .mainBackgroundColor
        button.tintColor = .white
        button.imageView?.setDimensions(width: 24, height: 24)
        button.addTarget(self, action: #selector(showCountries), for: .touchUpInside)
        return button
    }()
    
    //MARK:- Lifcycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    
    //MARK:- Helpers
    
    func configureUI(){
        view.backgroundColor = .white
        
        configureNavigationBar(withTitle: "Converter", prefersLargeTitles: true)
        
        view.addSubview(addCountryButton)
        addCountryButton.setDimensions(width: 56, height: 56)
        addCountryButton.layer.cornerRadius = 56 / 2
        addCountryButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 16,
                                paddingRight: 24)
        
    }
    
    //MARK:- Selectors
    
    @objc func showCountries() {
        
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.addCountryButton.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                self.addCountryButton.transform = CGAffineTransform(scaleX: 1, y: 1)
            }) {(_) in
                
                let  controller = CountriesController()
                let  nav = UINavigationController(rootViewController: controller)
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true, completion: nil)
                
                
            }
        }
        
    }
}
