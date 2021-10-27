//
//  EmpleatsTableViewController.swift
//  Empleats
//
//  Created by Carlota on 25/10/21.
//

import UIKit

class EmpleatsTableViewController: UITableViewController {
    var employeeManager = EmployeesManager()
    private let reuseIdentifier = "EmpleatsCell"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        employeeManager.returnEmployees().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexpath) as? EmployeeTableViewCell else {
                return UITableViewCell()
        }
        cell.nameLabel?.text = employeeManager.returnEmployees()[indexpath.row].name
        cell.chargeLabel?.text = employeeManager.returnEmployees()[indexpath.row].charge
        //cell.imageView?.image = employeeManager.returnEmployees()[indexpath.row].image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ViewController {
            if let cell = sender as? EmployeeTableViewCell {
                let index = tableView.indexPath(for: cell)?.row
                destinationVC.employee = employeeManager.returnEmployees()[index ?? 0]
            }
        }
    }
}
