//
//  ShippingRow.swift
//  CherryGo
//
//  Created by Kevin Pan on 2020-06-08.
//  Copyright © 2020 Kevin Pan. All rights reserved.
//

import SwiftUI

struct ShippingRow: View {
    var shipping: Shipping
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ShippingRow_Previews: PreviewProvider {
    static var previews: some View {
        ShippingRow(shipping: shippingData[0])
    }
}
