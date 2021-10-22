//
//  EmpleatsEntry.swift
//  Empleats
//
//  Created by Carlota on 22/10/21.
//

import Foundation

struct EmpleadosEntry {
    var nombre: String
    var cargo: String
    var departamento: String
    var edad: Int
    
    init(nombre: String, cargo: String, departamento: String, edad: Int) {
        self.nombre = nombre
        self.cargo = cargo
        self.departamento = departamento
        self.edad = edad
    }
}
