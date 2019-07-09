//
//  ViewController.swift
//  CompaniesIntermediateTrainig
//
//  Created by Dainis Putans on 03/07/2019.
//  Copyright © 2019 Dainis Putans. All rights reserved.
//

import UIKit



class CompaniesController: UITableViewController {
    
    var companies = [
        Company(name: "Apple", founded: Date()),
        Company(name: "Google", founded: Date()),
        Company(name: "Facebook", founded: Date())
    ]
    
    // add company to the list
    func addCompany(company: Company) {
        // let tesla = Company(name: "Tesla", founded: Date())
        
        // - modify your array
        companies.append(company)
        
        // - insert a new index path into tableView
        let newIndexPath = IndexPath(row: companies.count - 1, section: 0)
        tableView.insertRows(at: [newIndexPath], with: .automatic)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        view.backgroundColor = .white
        
        navigationItem.title = "Companies"
        
        tableView.backgroundColor = .darkBlue
        
        // tableView.separatorStyle = .none
        tableView.separatorColor = .white
        
        tableView.tableFooterView = UIView() // blank UIView
        
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "plus"), style: .plain, target: self, action: #selector(handleAddCompany))
        
        
        // navigationController?.navigationBar.backgroundColor = UIColor.red
        
    }
    
    @objc func handleAddCompany() {
        print("Adding company...")
        
        // creating 2nd screen - UIViewController
        let createCompanyController = CreateCompanyController()
        
        // createCompanyController.view.backgroundColor = .green
        
        let navController = CustomeNavigationController(rootViewController: createCompanyController)
        
        createCompanyController.companiesController = self
        
        present(navController, animated: true, completion: nil)
        
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .lightBlue
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        
        cell.backgroundColor = .tealColor
        
        let company = companies[indexPath.row]
        cell.textLabel?.text = company.name
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
    
    
    // override var preferredStatusBarStyle: UIStatusBarStyle {
    //    return .lightContent
    // }

}

