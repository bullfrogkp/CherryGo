//
//  Shipping.swift
//  CherryGo
//
//  Created by Kevin Pan on 2020-06-08.
//  Copyright © 2020 Kevin Pan. All rights reserved.
//

import SwiftUI

struct Shipping: Hashable, Codable, Identifiable {
    var id: Int
    var city: String
    var shippingDate: String
    var deposit: String
    var fee: String
    var luggage: Int
    var box: Int
    var status: String
    var comment: String
    var createdDatetime: String
    var createdUser: String
    var updatedDatetime: String
    var updatedUser: String
    var shippingType: String
    var customers: [Customer]
    var images: [String]
    var items: [Item]
}
