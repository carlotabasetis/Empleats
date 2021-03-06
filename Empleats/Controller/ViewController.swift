//
//  ViewController.swift
//  Empleats
//
//  Created by Carlota on 21/10/21.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var cargoTextField: UITextField!
    @IBOutlet weak var departamentoTextField: UITextField!
    @IBOutlet weak var edadTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var employee: Employee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named:"IMG_5087")
        imageView.layer.cornerRadius = 40
        setupUI()
    }

    
    func setupUI() {
        nombreTextField.text = employee?.name
        cargoTextField.text = employee?.charge
        departamentoTextField.text = employee?.department
        edadTextField.text = String(employee?.age)
    }


}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        setupUI()
        //updateEmployees()
        return true
    }
}

/*func updateEmployees() {
    let employee = employeeManager.returnEmployees()[Int.random(in: 0...2)]
    nombreTextField.text = employee.name
    cargoTextField.text = employee.charge
    departamentoTextField.text = employee.department
    edadTextField.text = String(employee.age)
}
@IBAction func generate(_ sender: UIButton) {
    updateEmployees()
}*/
