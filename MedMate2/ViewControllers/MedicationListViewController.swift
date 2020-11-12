//
//  MedicationListViewController.swift
//  MedMate2
//
//  Created by Stephanie Ballard on 11/11/20.
//

import UIKit

private let reuseIdentifier = "MedicationCell"

class MedicationListViewController: UIViewController {
    
    // MARK: - Properties -
    
    private let tableView = UITableView()
    var medications = [Medication]()
    
    // MARK: - Lifecycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        configureNavigationBar()
        configureTableView()
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
    
    func configureTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .purple
        tableView.rowHeight = 80
        
        view.addSubview(tableView)
        tableView.frame = view.frame
    }
}

extension MedicationListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = "Test Medication"
        return cell
    }
}

extension MedicationListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
