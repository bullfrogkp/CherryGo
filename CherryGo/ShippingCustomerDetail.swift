//
//  ShippingCustomerDetail.swift
//  CherryGo
//
//  Created by Kevin Pan on 2020-06-09.
//  Copyright © 2020 Kevin Pan. All rights reserved.
//

import SwiftUI

struct ShippingCustomerDetail: View {
    var customer: Customer
    
    var body: some View {
        Text(customer.name)
    }
}

struct ShippingCustomerDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShippingCustomerDetail(customer: shippingData[0].customers[0])
    }
}
