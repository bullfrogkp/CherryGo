//
//  Item.swift
//  CherryGo
//
//  Created by Kevin Pan on 2020-06-09.
//  Copyright © 2020 Kevin Pan. All rights reserved.
//

import SwiftUI

struct Item: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var quantity: Int
}
