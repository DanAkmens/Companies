//
//  ViewController.swift
//  CompaniesIntermediateTrainig
//
//  Created by Dainis Putans on 03/07/2019.
//  Copyright © 2019 Dainis Putans. All rights reserved.
//

import UIKit



class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        navigationItem.title = "Companies"
        
        tableView.backgroundColor = .darkBlue
        
        // tableView.separatorStyle = .none
        tableView.tableFooterView = UIView() // blank UIView
        
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "plus"), style: .plain, target: self, action: #selector(handleAddCompany))
        
        setupNavigationStyle()
        
        // navigationController?.navigationBar.backgroundColor = UIColor.red
        
    }
    
    @objc func handleAddCompany() {
        print("Adding company...")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        
        cell.backgroundColor = .tealColor
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func setupNavigationStyle() {
        
        navigationController?.navigationBar.isTranslucent = false
        
        
        
        navigationController?.navigationBar.barTintColor = .lightRed
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationController?.navigationBar.titleTextAttributes =  [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
    }
    
    // override var preferredStatusBarStyle: UIStatusBarStyle {
    //    return .lightContent
    // }

}
