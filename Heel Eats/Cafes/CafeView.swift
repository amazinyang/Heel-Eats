//
//  CafeView.swift
//  Heel Eats
//
//  Created by Alex Yang on 11/3/24.
//

import Foundation
import SwiftUI

struct CafeView: View {
    let cafes: [(restaurant: String, image: String)] = [
        ("Epilogue", "epilogue"),
        ("Meantime Coffee", "meantime"),
        ("Yaya Tea", "yaya")
    ]

    
    var body: some View {
        NavigationStack{
            ZStack {
                Color("uncBlue")
                    .ignoresSafeArea()
                VStack {
                    ForEach(cafes, id: \.restaurant) {restaurant, image in
                        ZStack(alignment: .center) {
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350, height: 200)
                                .clipped()
                            
                            Text(restaurant)
                                .font(.title)
                                .bold()
                                .foregroundStyle(.white)
                                .padding()
                                .background(Color.black.opacity(0.5))
                        }
                    }
                    NavigationLink(destination: EpilogueView()) {
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
    CafeView()
}
