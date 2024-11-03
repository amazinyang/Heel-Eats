//
//  EpilogueView.swift
//  Heel Eats
//
//  Created by Alex Yang on 11/3/24.
//

import Foundation
import SwiftUI


struct EpilogueView: View {
    @State private var isLiked: Bool = false
    @State private var likeCount: Int = 0
    @State private var isDisliked: Bool = false
    @State private var dislikeCount: Int = 0
    @State private var stars: Double = 4.5
    @State private var isFilled: Bool = false


    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("uncBlue")
                    .ignoresSafeArea()
                
                VStack {
                    
                    ZStack(alignment: .center) {
                        Image("epilogue")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 365, height: 200)
                            .clipped()
                        
                        Text("Epilogue")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color.black.opacity(0.5))
                    }
                    
                    //                    HStack {
                    //
                    //                        VStack (alignment: .leading, spacing: 10) {
                    //                            DislikeButton(isDisliked: $isDisliked, dislikeCount: $dislikeCount)
                    //                            Text("Total dislikes: \(dislikeCount)")
                    //                        }
                    //
                    //                        Spacer()
                    //
                    //                        VStack (alignment: .trailing, spacing: 10) {
                    //                            LikeButton(isLiked: $isLiked, likeCount: $likeCount)
                    //                            Text("Total likes: \(likeCount)")
                    //                        }
                    HStack {
//                        ForEach(1...5, id: \.self) { _ in
//                            Image(systemName: "star.fill")
//                                .resizable()
//                                .frame(width: 20, height: 20)
//                        }
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
    EpilogueView()
}
