//
//  ShippingDetail.swift
//  CherryGo
//
//  Created by Kevin Pan on 2020-06-08.
//  Copyright © 2020 Kevin Pan. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct ShippingDetail: View {
    var shipping: Shipping
    
    var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
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
            
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 20) {
                    ForEach((0...6), id: \.self) {_ in
                        Image("test1")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct ShippingDetail_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 14.0, *) {
            ShippingDetail(shipping: shippingData[0])
        } else {
            // Fallback on earlier versions
        }
    }
}
