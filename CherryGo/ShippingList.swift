//
//  ShippingList.swift
//  CherryGo
//
//  Created by Kevin Pan on 2020-06-08.
//  Copyright © 2020 Kevin Pan. All rights reserved.
//

import SwiftUI

struct ShippingList: View {
    var body: some View {
        List {
            ShippingRow(shipping: shippingData[0])
            ShippingRow(shipping: shippingData[1])
        }
    }
}

struct ShippingList_Previews: PreviewProvider {
    static var previews: some View {
        ShippingList()
    }
}
