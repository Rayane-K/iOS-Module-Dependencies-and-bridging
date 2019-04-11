//
//  PaymentProtocol.swift
//  Payment
//
//  Created by Kurrimboccus Rayane on 10/04/2019.
//  Copyright © 2019 Kurrimboccus Rayane. All rights reserved.
//

import Foundation

/*
 This protocol represents the bridge between the app and the module.
 It must be declared in the module and implemented in the app
 */
public protocol PaymentProtocol {
    static func pay(with cardNumber: String) -> String?
}
