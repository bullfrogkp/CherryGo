//
//  ShippingDetail.swift
//  CherryGo
//
//  Created by Kevin Pan on 2020-06-08.
//  Copyright © 2020 Kevin Pan. All rights reserved.
//

import SwiftUI

struct ShippingDetail: View {
    var shipping: Shipping
    
    var rowCount: Int {
        if(shipping.images.count % 3 == 0) {
            return (shipping.images.count) / 3
        } else {
            return (shipping.images.count) / 3 + 1
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("日期：")
                Spacer()
                Text(shipping.shippingDate)
                Spacer()
                Text("城市：")
                Spacer()
                Text(shipping.city)
            }
            .padding()
            
            HStack {
                if shipping.shippingType == "人肉" {
                    Text("箱子：")
                    Spacer()
                    Text(String(shipping.luggage))
                } else {
                    Text("包裹：")
                    Spacer()
                    Text(String(shipping.box))
                }
                Spacer()
                Text("价格：")
                Spacer()
                Text(shipping.fee)
            }
            .padding()
            
            Spacer()
            
            NavigationView {
                List {
                    ForEach(shipping.customers) { customer in
                        NavigationLink(destination: ShippingCustomerDetail(customer: customer)) {
                            Text(customer.name)
                        }
                    }
                }
            }
            
            Spacer()
            
            NavigationView {
                List() {
                    ForEach(0..<rowCount) { _ in
                        HStack {
                            ForEach(0..<3) { _ in
                                Image("test1")
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ShippingDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShippingDetail(shipping: shippingData[0])
    }
}
