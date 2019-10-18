//
//  ViewController.swift
//  BankAccount
//
//  Created by Ron Herrema on 16/10/2019.
//  Copyright © 2019 Ron Herrema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    var account = BankAccount(balance: 0.0)
    
    @IBAction func deposit(_ sender: UIButton) {
        //  The 'if let' structure tests the userInput.text optional and
        //  proceeds only if it has a non-nil value
        if let string = userInput.text {
            let strToDoub = Double(string)!
            let newBalance = account.deposit(amount: strToDoub)
            let doubToStr = String(newBalance)
            balance.text = "£\(doubToStr)"
        }
    }
    
    @IBAction func withdraw(_ sender: UIButton) {
        if let string = userInput.text {
            let strToDoub = Double(string)!
            let newBalance = account.withdraw(amount: strToDoub)
            let doubToStr = String(newBalance)
            balance.text = "£\(doubToStr)"
        }
    }
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var balance: UILabel!
    
    
    
    
    
    
    
    
    
    
    
}

