//
//  TinderView.swift
//  Heel Eats
//
//  Created by Alex Yang on 11/2/24.
//

import Foundation
import SwiftUI


struct TinderView: View {
    @State private var isLiked: Bool = false
    @State private var likeCount: Int = 0
    @State private var isDisliked: Bool = false
    @State private var dislikeCount: Int = 0
    @State private var stars: Int = 0


    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("uncBlue")
                    .ignoresSafeArea()
                
                VStack {
                    
                    ZStack {
                        Image("cosmicFood")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Image("cosmicLogo")
                            .resizable()
                            .scaledToFit()
                            .padding(.top)
                            .padding(30)
                    }
                    
                    HStack {
                        
                        VStack (alignment: .leading, spacing: 10) {
                            DislikeButton(isDisliked: $isDisliked, dislikeCount: $dislikeCount)
                            Text("Total dislikes: \(dislikeCount)")
                        }
                        
                        Spacer()
                        
                        VStack (alignment: .trailing, spacing: 10) {
                            LikeButton(isLiked: $isLiked, likeCount: $likeCount)
                            Text("Total likes: \(likeCount)")
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
    TinderView()
        //preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
