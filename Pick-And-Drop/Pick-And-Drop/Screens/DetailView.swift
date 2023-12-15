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
                Button(action: {
                }) {
                    HStack {
                        Image(uiImage: UIImage(named: "horizontalline") ?? UIImage())
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                }
                .onLongPressGesture(minimumDuration: 0.0) {
                                   withAnimation {
                                       isSheetExpanded.toggle()
                                   }
                               }
                               .gesture(
                                   DragGesture()
                                       .onChanged { value in
                                           handleDragGesture(value)
                                       }
                               )
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
                    }
                }
            }

            OrderSummaryView()
        }
        .frame(height: isSheetExpanded ? nil : viewHeight)
        .background(Color.black)
        .cornerRadius(5)
        .edgesIgnoringSafeArea(.bottom)
    }
    
    private func handleDragGesture(_ value: DragGesture.Value) {
            let translation = value.translation.height
            if !isSheetExpanded {
                let newHeight = max(viewHeight, translation)
                viewHeight = min(max(newHeight, viewHeight), geometry.size.height * 0.5)
                isSheetExpanded = viewHeight > geometry.size.height * 0.2 + 6
            }
        }
    
}
