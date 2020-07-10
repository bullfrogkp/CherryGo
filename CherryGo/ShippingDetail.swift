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
                
                
                List {
                    ForEach(shipping.customers) { customer in
                        NavigationLink(destination: ShippingCustomerDetail(customer: customer)) {
                            Text(customer.name)
                        }
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                
                ScrollView {
                    LazyVGrid(columns: gridItemLayout, spacing: 20) {
                        ForEach(0 ..< shipping.images.count) {count in
                            NavigationLink(destination: Text("Second View")) {
                                Image(shipping.images[count])
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                }
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .navigationBarTitle("")
                .navigationBarHidden(true)
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
