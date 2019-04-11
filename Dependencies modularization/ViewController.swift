//
//  ViewController.swift
//  Dependencies modularization
//
//  Created by Kurrimboccus Rayane on 10/04/2019.
//  Copyright © 2019 Kurrimboccus Rayane. All rights reserved.
//

import UIKit
import Payment

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.title = "App page"
    }


    // Show payment controller contained in Payment module
    @IBAction func didTapPaymentNavigationButton(_ sender: Any) {
        let controller = PaymentViewController(paymentService: PaymentService.self)
        navigationController?.pushViewController(controller, animated: true)
    }
}

