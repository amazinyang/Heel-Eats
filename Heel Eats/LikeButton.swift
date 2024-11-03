//
//  LikeButton.swift
//  Heel Eats
//
//  Created by Alex Yang on 11/2/24.
//

import Foundation
import SwiftUI

struct LikeButton: View {
    @Binding var isLiked: Bool
    @Binding var likeCount: Int
    
    var body: some View {
        Button {
            isLiked.toggle()
            if isLiked {
                likeCount += 1
            }
            else {
                likeCount -= 1
            }
        } label: {
            isLiked ? Image(systemName: "hand.thumbsup.fill") : Image(systemName: "hand.thumbsup")

        }
        
    }
}


//#Preview {
//    LikeButton(like: false)
//}
