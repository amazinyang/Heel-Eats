//
//  AmericanView.swift
//  Heel Eats
//
//  Created by Alex Yang on 11/3/24.
//

import Foundation
import SwiftUI

struct AmericanView: View {
    let americanRestaurants: [(name: String, image: String)] = [
        (name: "Buns", image: "bunsFood"),
        (name: "Top of the Hill", image:"hillFood"),
        (name: "Sup Dogs", image: "dogsFood")
    ]
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color("uncBlue")
                    .ignoresSafeArea()
                
                VStack {
                    
                    ForEach(americanRestaurants, id: \.name) {restaurant, image in
                        ZStack(alignment: .center) {
                            if restaurant == "Buns" {
                                NavigationLink(destination: BunsView()) {
                                    Text("Buns")
                                        .font(.title)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .padding()
                                        .background(Color.black.opacity(0.5))
                                }
                            }
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 200)
                                .clipped()
                            
                            Text(restaurant)
                                .font(.title)
                                .bold()
                                .foregroundStyle(.white)
                                .padding()
                                .background(Color.black.opacity(0.5))
                        }
                    }
                    NavigationLink(destination: BunsView()) {
                        Text("More Details")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                }
                .padding()
            }
        }
        .navigationTitle("We recommend: ")
    }
}


#Preview {
    AmericanView()
}
