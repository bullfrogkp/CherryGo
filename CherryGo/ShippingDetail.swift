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
        }
    }
}

struct ShippingDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ShippingDetail(shipping: shippingData[0])
            ShippingDetail(shipping: shippingData[1])
        }
    }
}
