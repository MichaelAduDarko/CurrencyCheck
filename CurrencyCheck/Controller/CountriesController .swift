//
//  CountriesController .swift
//  CurrencyCheck
//
//  Created by MICHAEL ADU DARKO on 5/9/20.
//  Copyright © 2020 Bronzy. All rights reserved.
//

import UIKit

class CountriesController: UITableViewController {
    
    //MARK:- Properties
    
    private let searchController = UISearchController(searchResultsController: nil)
       
       private var inSearchMode: Bool {
           return searchController.isActive && !searchController.searchBar.text!.isEmpty
       }
    
    
    private lazy var doneButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        button.setTitle("Done", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        
        button.frame = CGRect(x: 0, y: 0, width: 64, height: 32)
        button.layer.cornerRadius = 32 / 2
        button.addTarget(self, action: #selector(handleDismissal), for: .touchUpInside)
        return button
    }()
    
    
    //MARK:- Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureSearchController()
    }
    
    //MARK:- Selectors
    
    @objc func handleDismissal(){
        dismiss(animated: true, completion: nil)
    }
    
    
    //MARK:- Helpers
    
    
    func configureUI(){
        view.backgroundColor = .white
        configureNavigationBar(withTitle: "Countries", prefersLargeTitles: false)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: doneButton)
        
    }
    
    func configureSearchController(){
        searchController.searchResultsUpdater = self
        searchController.searchBar.showsCancelButton = false
        navigationItem.searchController = searchController
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "Search for Country"
        definesPresentationContext = false
        
        if let textField = searchController.searchBar.value(forKey: "searchField") as? UITextField {
            textField.textColor = .black
            textField.backgroundColor = .white
        }
    }
    
}

extension CountriesController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}
