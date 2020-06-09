//
//  ShippingCustomerDetail.swift
//  CherryGo
//
//  Created by Kevin Pan on 2020-06-09.
//  Copyright © 2020 Kevin Pan. All rights reserved.
//

import SwiftUI

struct ShippingCustomerDetail: View {
    var customer: String
    
    var body: some View {
        Text(customer)
    }
}

struct ShippingCustomerDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShippingCustomerDetail(customer: shippingData[0].customers[0])
    }
}
