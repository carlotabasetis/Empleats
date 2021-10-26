//
//  EmpleadosManager.swift
//  Empleats
//
//  Created by Carlota on 22/10/21.
//

import Foundation

class EmployeesManager {
    private let employees = [
        Employee(name: "Juan Colilla", charge: "iOS Developer", department: "Mobile", age: 26),
        Employee(name: "Marta Altarriba", charge: "iOS Developer", department: "Mobile", age: 24),
        Employee(name: "Isha Noor", charge: "iOS Developer", department: "Mobile", age: 25)]
    
    func returnEmployees() -> [Employee] {
        return employees
    }
}
