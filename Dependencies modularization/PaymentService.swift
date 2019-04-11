//
//  PaymentService.swift
//  Dependencies modularization
//
//  Created by Kurrimboccus Rayane on 10/04/2019.
//  Copyright © 2019 Kurrimboccus Rayane. All rights reserved.
//

import Foundation
import Payment

class PaymentService {
    
    /*
     We assume this method is a core function that cannot be extracted to a module for multiple reasons.
     - Maybe it's using a payment service contained in a library that cannot be imported in the Payment module ?
     - Maybe we don't have the time to export this method to a module because the deadline is tonight !
     - Maybe we don't want the testers to make a full regression testing on the payment for time/budget reasons ?
     - Any other reason
     
     So you can call this method ONLY from within the app, NOT from a module
     */
    static func pay(with cardNumber: String) -> String? {
        // Do stuff possible inside the app target
        print("Launching payment with card : \(cardNumber) from the app core")
        
        // Let's say only empty field is considered as an error
        guard !cardNumber.isEmpty else { return nil }
        
        return "Your payment has been accepted ! This is a message from the main app target"
    }
    
}


/*
 By making this class conform to the protocol, and passing a reference to this class when instanciating the PaymentViewController (in ViewController.swift),
 you make sure the method pay(with cardnumber: String) (visible in the class above) will be called when the method pay(with card number: String) (called from the module, on the PaymentService reference which is of type PaymentProtocol.Type, just check the PaymentViewController.swift file
 
 To conclude, this allows you to call the method in the class above (which is defined in the app) FROM your module ! This is the bridge
 
 Note : This extension does not require to re-write the method contained in the protocol since its name (pay(with cardNumber: String)) is the same as the name in PaymentService class, so by default the system will use the method declared in PaymentService class
 */
extension PaymentService: PaymentProtocol {
    
}
