//
//  OrderItemView.swift
//  Pick-And-Drop
//
//  Created by Saqib Siddique on 14/12/2023.
//

import SwiftUI

struct OrderItemView: View {
    var index: Int
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color("bgAssignedColor"))
                .overlay(
                    HStack {
                        Text(StringConstants.OrderId)
                            .font(.headline)
                            .font(.system(size: 5))
                            .foregroundColor(.white)
                        
                        Text("\(index)")
                            .font(.headline)
                            .font(.system(size: 10))
                            .foregroundColor(Color("OrderIdColor"))
                        
                        Spacer()
                        
                        Text(StringConstants.Assigneed)
                            .font(.subheadline)
                            .font(.system(size: 10))
                            .foregroundColor(Color("greenishColor"))
                    }
                        .padding(EdgeInsets(top: 20, leading: 5, bottom: 20, trailing: 5))
                )
        }
        Text(StringConstants.PickUp)
            .foregroundColor(.white)
            .font(.system(size: 15))
        
        HStack {
            Text(StringConstants.Address)
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.white)
                .font(.system(size: 10))
            Spacer()
            Button(action: {
            }) {
                HStack {
                    Image(systemName: "arrow.right")
                        .foregroundColor(.green)
                }
                .padding()
                .cornerRadius(10)
            }
        }
        
        Text(StringConstants.DeliveryTime)
            .foregroundColor(.white)
            .font(.system(size: 15))
            .padding(.vertical, 5)
        
        Text(StringConstants.TownShip)
            .foregroundColor(.white)
            .font(.system(size: 10))
            .padding(.bottom, 5)
    }
}
