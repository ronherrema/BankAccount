//
//  BankAccount.swift
//  BankAccount
//
//  Created by Ron Herrema on 16/10/2019.
//  Copyright © 2019 Ron Herrema. All rights reserved.
//

import Foundation

class BankAccount {
    var balance: Double
    var lastName: String?
    var firstName: String?
    
    init(balance: Double) {
        self.balance = balance
    }
    
    func withdraw(amount: Double) -> Double {
        // multiply by 1000 to eliminate floating point inaccuracies
        let newBalance = (balance*1000) - (amount*1000)
        print("Your new balance is £ \(newBalance/1000)")
        balance = newBalance/1000
        return newBalance/1000
    }
    
    func deposit (amount: Double) -> Double {
        let newBalance = (balance*1000) + (amount*1000)
        print("Your new balance is £ \(newBalance/1000)")
        balance = newBalance/1000
        return newBalance/1000
    }
}



