//
//  PaymentViewController.swift
//  Payment
//
//  Created by Kurrimboccus Rayane on 10/04/2019.
//  Copyright © 2019 Kurrimboccus Rayane. All rights reserved.
//

import Foundation

public class PaymentViewController: UIViewController {
    
    @IBOutlet var cardNumberTextField: UITextField!
    @IBOutlet var messageLabel: UILabel!
    private let paymentService: PaymentServiceProtocol.Type
    
    public init(paymentService: PaymentServiceProtocol.Type) {
        self.paymentService = paymentService
        super.init(nibName: nil, bundle: Bundle.payment)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Payment module page"
    }
    
    @IBAction func didTapPayButton(_ sender: Any) {
        guard let cardNumberString = cardNumberTextField.text else { return }
        
        /*
         Here we call the method pay from the protocol, which is implemented within the app.
         So it will execute the code in SpaghettiService.swift
         */
        if let result = paymentService.pay(with: cardNumberString) {
            messageLabel.text = result
            messageLabel.textColor = UIColor.green
        } else {
            messageLabel.text = "Field must not be empty"
            messageLabel.textColor = UIColor.red
        }
    }
}
