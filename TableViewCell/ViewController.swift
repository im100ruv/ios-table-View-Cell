//
//  ViewController.swift
//  TableViewCell
//
//  Created by Im100ruv on 21/01/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var companyTableView: UITableView!
    
    let company = ["Google", "Amazon", "Apple", "Microsoft", "Samsung", "Facebook"]
    let employeeNo = [6.5, 4.3, 4.0, 5.8, 5.1, 4.1]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        companyTableView.delegate = self
        companyTableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return company.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = companyTableView.dequeueReusableCell(withIdentifier: "companyTableCell")
        
        cell?.textLabel?.text = company[indexPath.row]
        cell?.detailTextLabel?.text = "\(employeeNo[indexPath.row])"
        
        return cell!
    }
    


}

