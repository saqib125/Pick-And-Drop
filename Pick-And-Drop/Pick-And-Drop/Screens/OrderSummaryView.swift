//
//  OrderSummaryView.swift
//  Pick-And-Drop
//
//  Created by Saqib Siddique on 14/12/2023.
//

import SwiftUI

struct OrderSummaryView: View {
    var body: some View {
        VStack(spacing: 2) {
            HStack {
                Text(StringConstants.TotalOrdrs)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                
                Spacer()
                
                Text("\(10)")
                    .foregroundColor(Color("greenishColor"))
                    .font(.headline)
                    .padding()
            }
            OrderListView()
        }
    }
}
