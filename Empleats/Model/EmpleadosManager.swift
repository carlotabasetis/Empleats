//
//  EmpleadosManager.swift
//  Empleats
//
//  Created by Carlota on 22/10/21.
//

import Foundation

class EmpleadosManager {
    private let empleados = [
        EmpleadosEntry(nombre: "Juan Colilla", cargo: "iOS Developer", departamento: "Mobile", edad: 26),
        EmpleadosEntry(nombre: "Marta Altarriba", cargo: "iOS Developer", departamento: "Mobile", edad: 24),
        EmpleadosEntry(nombre: "Isha Noor", cargo: "iOS Developer", departamento: "Mobile", edad: 25)]
    
    func retornaEmpleats() -> [EmpleadosEntry]  {
        return empleados
    }
}
