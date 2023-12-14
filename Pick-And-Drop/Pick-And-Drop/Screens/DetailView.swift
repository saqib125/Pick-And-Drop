//
//  DetailView.swift
//  Pick-And-Drop
//
//  Created by Saqib Siddique on 14/12/2023.
//

import SwiftUI

struct DetailView: View {
    @State private var isSheetExpanded = false
    @State private var viewHeight: CGFloat = 300.0
    let geometry: GeometryProxy
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            HStack {
                Spacer()
                if !isSheetExpanded {
                    Capsule()
                        .fill(Color.secondary)
                        .frame(width: 35, height: 5)
                        .padding(.top, 5)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                Spacer()
                
                if isSheetExpanded {
                    Button(action: {
                        withAnimation {
                            isSheetExpanded.toggle()
                        }
                    }) {
                        Image(systemName: "multiply.circle")
                            .font(.title)
                            .foregroundColor(.gray)
                            .padding()
                    }
                }
            }
            OrderSummaryView()
        }
        .frame(height: isSheetExpanded ? nil : viewHeight)
        .background(Color.black)
        .cornerRadius(5)
        .edgesIgnoringSafeArea(.bottom)
        .gesture(
            DragGesture()
                .onChanged { value in
                    if !isSheetExpanded {
                        let newHeight = max(viewHeight, value.translation.height)
                        viewHeight = min(max(newHeight, viewHeight), geometry.size.height * 0.5)
                        isSheetExpanded = viewHeight > geometry.size.height * 0.2 + 6
                    }
                }
        )
    }
}
