//
//  MessageView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 10/4/24.
//

import SwiftUI

struct MessageView: View {
    @State var comment: CommentModel
    
    var body: some View {
        HStack {
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
            .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text(comment.content)
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(.gray)
                    .cornerRadius(10)
            }
            
            Spacer(minLength: 0)
        }
    }
}

#Preview {
    MessageView(comment: CommentModel(commentID: "", userID: "", username: "Arpan", content: "This is a test comment. Hope everyone is doing fine!", dateCreated: .now))
        .previewLayout(.sizeThatFits)
}
