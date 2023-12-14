//
//  OrderListView.swift
//  Pick-And-Drop
//
//  Created by Saqib Siddique on 14/12/2023.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        List(0..<10) { index in
            Section(header: Text("").padding(.vertical, 2).background(Color.black)) {
                VStack(alignment: .leading, spacing: 5) {
                    OrderItemView(index: index)
                }
                .listRowBackground(Color("SectionBgColor"))
            }
        }
    }
}
