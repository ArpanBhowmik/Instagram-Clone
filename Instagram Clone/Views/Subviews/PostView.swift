//
//  PostView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 6/4/24.
//

import SwiftUI

struct PostView: View {
    @State var postModel: PostModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            // MARK: HEADER
            
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                    .cornerRadius(15)
                
                Text(postModel.username)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(.all, 6)
            
            // MARK: IMAGE
            
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            // MARK: FOOTER
            
            HStack(alignment: .center, spacing: 20, content: {
                Image(systemName: "heart")
                    .font(.title3)
                
                Image(systemName: "bubble.middle.bottom")
                    .font(.title3)
                
                Image(systemName: "paperplane")
                    .font(.title3)
                
                Spacer()
            })
            .padding(.all, 6)
            
            if let caption = postModel.caption {
                HStack {
                    Text(caption)
                    
                    Spacer(minLength: 0)
                }
                .padding(.all, 6)
            }
        })
    }
}

#Preview {
    PostView(
        postModel: PostModel(
            postID: "",
            userID: "",
            username: "Arpan Bhowmik",
            caption: "This is a test caption!",
            dateCreated: Date(),
            likeCount: 0,
            likedByUser: false
        )
    )
    .previewLayout(.sizeThatFits)
}
