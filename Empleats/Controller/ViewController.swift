//
//  ViewController.swift
//  Empleats
//
//  Created by Carlota on 21/10/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var cargoTextField: UITextField!
    @IBOutlet weak var departamentoTextField: UITextField!
    @IBOutlet weak var edadTextField: UITextField!
    
    var employeeManager = EmpleadosManager()
    
    func updateEmpleados() {
        let empleado = employeeManager.retornaEmpleats()[Int.random(in: 0...2)]
        nombreTextField.text = empleado.nombre
        cargoTextField.text = empleado.cargo
        departamentoTextField.text = empleado.departamento
        Int(edadTextField.text) = empleado.edad
    }
    @IBAction func generar(_ sender: UIButton) {
        updateEmpleados()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        updateEmpleados()
        return true
    }
}

