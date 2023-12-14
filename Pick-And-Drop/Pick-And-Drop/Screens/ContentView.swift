//
//  ContentView.swift
//  Pick-And-Drop
//
//  Created by Saqib Siddique on 14/12/2023.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var isDetailViewPresented = false
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .black
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack(alignment: .bottom) {
                    MapView()
                        .edgesIgnoringSafeArea(.all)
                    
                    if isDetailViewPresented {
                        DetailView(geometry: geometry)
                            .transition(.move(edge: .bottom))
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading: Button(action: {}) {
                        Image(systemName: "text.justify")
                            .imageScale(.large)
                            .foregroundColor(.white)
                    },
                    trailing: HStack {
                        Button(action: {}) {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                                .foregroundColor(.white)
                        }
                        
                        Button(action: {}) {
                            Image(systemName: "bell")
                                .imageScale(.large)
                                .foregroundColor(.white)
                        }
                    }
                )
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text(Date().getFormattedDate())
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            .onAppear() {
                self.isDetailViewPresented = true
            }
        }
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}

#Preview {
    ContentView()
}


