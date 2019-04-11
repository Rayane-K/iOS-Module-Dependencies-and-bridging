//
//  Bundle+Payment.swift
//  Payment
//
//  Created by Kurrimboccus Rayane on 10/04/2019.
//  Copyright © 2019 Kurrimboccus Rayane. All rights reserved.
//

import Foundation

// Fake class used only for getting the bundle of the Payment module target
private class PaymentBundle {}

public extension Bundle {
    static var payment: Bundle {
        return Bundle(for: PaymentBundle.self)
    }
}
