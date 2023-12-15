//
//  OrderListView.swift
//  Pick-And-Drop
//
//  Created by Saqib Siddique on 14/12/2023.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        Form {
            ForEach(1..<11, id: \.self) { index in
                Section {
                    VStack(alignment: .leading, spacing: 5) {
                        OrderItemView(index: index)
                    }
                    .listRowBackground(Color("SectionBgColor"))
                }
            }
        }
    }
}
