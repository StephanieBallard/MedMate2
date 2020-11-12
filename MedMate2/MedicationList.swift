//
//  MedicationList.swift
//  MedMate2
//
//  Created by Stephanie Ballard on 11/11/20.
//

import UIKit

class MedicationList: UIViewController {
    
    // MARK: - Properties -
    
    // MARK: - Lifecycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        configureNavigationBar()
    }
    
    // MARK: - Helpers -
    
    func configureNavigationBar() {
        let appearance = UINavigationBarAppearance()
        
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemPurple
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationController?.navigationBar.isTranslucent = true
        navigationItem.title = "Current Medications"
        navigationController?.navigationBar.tintColor = .white
    }
}
