//
//  CosmicView.swift
//  Heel Eats
//
//  Created by Alex Yang on 11/3/24.
//

import Foundation
import SwiftUI


struct CosmicView: View {
    @State private var isLiked: Bool = false
    @State private var likeCount: Int = 0
    @State private var isDisliked: Bool = false
    @State private var dislikeCount: Int = 0
    @State private var stars: Double = 4.4
    @State private var isFilled: Bool = false


    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("uncBlue")
                    .ignoresSafeArea()
                
                VStack {
                    
                    ZStack(alignment: .center) {
                        Image("cosmicFood")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 365, height: 200)
                            .clipped()
                        
                        Text("Cosmic Cantina")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color.black.opacity(0.5))
                    }

                    HStack {
                        Text("Rating: \(String(format: "%.1f", stars))");
                       
                        //Used AI for syntax purposes in the ForEach loop
                        ForEach(0..<5) { index in
                            if index < Int(stars) {
                                Image(systemName: "star.fill") // Filled star
                            } else if index == Int(stars) && stars.truncatingRemainder(dividingBy: 1) != 0 {
                                Image(systemName: "star.lefthalf.fill") // Half star
                            } else {
                                Image(systemName: "star") // Empty star
                            }
                        }
                    }
                    .padding(.horizontal)
                    .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    CosmicView()
}
