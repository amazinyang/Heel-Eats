//
//  DislikeButton.swift
//  Heel Eats
//
//  Created by Alex Yang on 11/2/24.
//

import Foundation
import SwiftUI

struct DislikeButton: View {
    @Binding var isDisliked: Bool
    @Binding var dislikeCount: Int
    
    var body: some View {
        Button {
            isDisliked.toggle()
            if isDisliked {
                dislikeCount += 1
            }
            else {
                dislikeCount -= 1
            }
           // isDisliked ? dislikeCount += 1 : dislikeCount -= 1
        } label: {
            isDisliked ? Image(systemName: "hand.thumbsdown.fill") : Image(systemName: "hand.thumbsdown")

            
        }
        
    }
}
