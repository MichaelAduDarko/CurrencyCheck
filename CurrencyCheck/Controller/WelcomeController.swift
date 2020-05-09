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
    
    private let logoImageView:UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "Currency_app_icon")
        iv.layer.borderColor = #colorLiteral(red: 0.9996390939, green: 1, blue: 0.9997561574, alpha: 1)
        iv.layer.borderWidth = 4.0
        iv.layer.cornerRadius = 40 / 2
        return iv
    }()
    
    private let titleLabel: UILabel = {
        let label = CustomLabel(title: "Welcome To Currency Check")
        label.font = UIFont(name: "Anton-Regular", size: 25)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private let getStartedButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Get Started", for: .normal)
        button.layer.cornerRadius = 14
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = .white
        button.setTitleColor(.mainBackgroundColor, for: .normal)
        button.addTarget(self, action: #selector(nextView), for: [.touchUpInside, .touchUpOutside])
        return button
    }()
    
    //MARK:- Lifcycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //MARK:- Selector
    @objc func nextView() {
        
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.getStartedButton.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                self.getStartedButton.transform = CGAffineTransform(scaleX: 1, y: 1)
            }) {(_) in
                
                let Controller = ConverterController()
                
                let nav = UINavigationController(rootViewController: Controller)
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true, completion: nil)
            }
        }
        
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
        
        bg.addSubview(logoImageView)
        logoImageView.centerX(inView: view)
        logoImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop:  200)
        logoImageView.setDimensions(width: 120, height: 120)
        
        let stack = UIStackView(arrangedSubviews: [titleLabel])
        stack.axis = .vertical
        stack.spacing = 16
        
        bg.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor,
                     left: view.leftAnchor,
                     right: view.rightAnchor,
                     paddingTop: 32,
                     paddingLeft: 32,
                     paddingRight: 32)
        
        bg.addSubview(getStartedButton)
        getStartedButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        getStartedButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        getStartedButton.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        getStartedButton.bottomAnchor.constraint(equalTo: bg.bottomAnchor, constant: -60).isActive = true
        
        
        
        
    }
}
