//
//  ChineseView.swift
//  Heel Eats
//
//  Created by Alex Yang on 11/3/24.
//

import Foundation
import SwiftUI

struct ChineseView: View {
    let chineseRestaurants: [(restaurant: String, image: String)] = [
        ("Hunam Chinese Restaurant", "hunamFood"),
        ("Gourmet Kingdom", "kingdomFood"),
        ("Jade Palace", "palaceFood")
    ]

    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("uncBlue")
                    .ignoresSafeArea()
                VStack {
                    ForEach(chineseRestaurants, id: \.restaurant) { restaurant, image in
                        ZStack(alignment: .center) {
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 365, height: 200)
                                .clipped()
                            
                            Text(restaurant)
                                .font(.title)
                                .bold()
                                .foregroundStyle(.white)
                                .padding()
                                .background(Color.black.opacity(0.5))
                        }
                    }
                    NavigationLink(destination: HunamView()) {
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
            .navigationTitle("We recommend: ")
        }
    }
}


#Preview {
    ChineseView()
}
