//
//  CreateCompanyController.swift
//  CompaniesIntermediateTrainig
//
//  Created by Dainis Putans on 05/07/2019.
//  Copyright © 2019 Dainis Putans. All rights reserved.
//

import UIKit

class CreateCompanyController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Create Company"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
        
        view.backgroundColor = .darkBlue
        
    }
    
    @objc func handleCancel() {
        dismiss(animated: true, completion: nil)
    }
}
