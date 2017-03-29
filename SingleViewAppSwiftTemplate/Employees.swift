//
//  Employees.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Nathan Rohweder on 3/29/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class Employee: Entrant {
    var employeeType: EntrantTypes
    var firstName: String
    var lastName: String
    var address: String
    var city: String
    var state: String
    var zipCode: Int
    
    init (employeeType: EntrantTypes, firstName: String, lastName: String, address: String, city: String, state: String, zipCode: Int) {
        self.employeeType = employeeType
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
}

class HourlyFood: Employee {
    
}

class HourlyRide: Employee {
    
}

class HourlyMaintenance: Employee {
    
}

class Manager: Employee {
    
}
