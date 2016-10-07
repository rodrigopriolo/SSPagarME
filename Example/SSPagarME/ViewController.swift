//
//  ViewController.swift
//  SSPagarME
//
//  Created by Rodrigo Priolo on 09/30/2016.
//  Copyright (c) 2016 Rodrigo Priolo. All rights reserved.
//

import UIKit
import SSPagarME

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Send Payment
    @IBAction func sendPayment(_ send: UIButton) {
        let pagarME = SSPagarME.sharedInstance
        
        // card
        pagarME.card.cardNumber = "5555111111111111"
        pagarME.card.cardHolderName = "Rodrigo Priolo"
        pagarME.card.cardExpirationMonth = "05"
        pagarME.card.cardExpirationYear = "18"
        pagarME.card.cardCVV = "123"
        
        // customer with transition
        pagarME.customer.name = "Onwer Card"
        pagarME.customer.document_number = "09809889011"
        pagarME.customer.email = "owner@card.com"
        pagarME.customer.street = "Street"
        pagarME.customer.neighborhood = "Neightborhood"
        pagarME.customer.zipcode = "00000"
        pagarME.customer.street_number = "1"
        pagarME.customer.complementary = "Apt 805"
        pagarME.customer.ddd = "031"
        pagarME.customer.number = "986932196"
        
        //Get Card Hash
        SSPagarME.sharedInstance.generateCardHash(success: { (card_hash) in
            print("card_hash: \(card_hash)")
        }) { (message) in
            print("error message: \(message)")
        }
        
        
        /*
         SSPagarME.sharedInstance.transaction(amount: "1000", success: { (data) in
         print("data transaction: \(data)")
         })
         { (message) in
         print("error message: \(message)")
         }
         */
        
        
    }

}

