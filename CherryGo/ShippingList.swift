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
        NavigationView {
            List(shippingData) { shipping in
                NavigationLink(destination: ShippingDetail(shipping: shipping)) {
                    ShippingRow(shipping: shipping)
                }
            }
            .navigationBarTitle(Text("货单"))
        }
    }
}

struct ShippingList_Previews: PreviewProvider {
    static var previews: some View {
        ShippingList()
    }
}
