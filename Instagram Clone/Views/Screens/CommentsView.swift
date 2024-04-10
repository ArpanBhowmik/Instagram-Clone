//
//  CommentsView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 7/4/24.
//

import SwiftUI

struct CommentsView: View {
    @State var submissionText: String = ""
    @State var comments: [CommentModel] = []
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(comments, id: \.self) { comment in
                    MessageView(comment: comment)
                }
            }
                        
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Add a comment here...", text: $submissionText)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                })
                .accentColor(Color.MyTheme.purpleColor)
            }
            .padding(.all, 6)
        }
        .navigationTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            getComments()
        }
    }
    
    // MARK: FUNCTIONS
    func getComments() {
        let comment1 = CommentModel(commentID: "", userID: "", username: "Arpan", content: "This is the first comment", dateCreated: Date())
        let comment2 = CommentModel(commentID: "", userID: "", username: "John", content: "This is the second comment", dateCreated: Date())
        let comment3 = CommentModel(commentID: "", userID: "", username: "Doe", content: "This is the third comment", dateCreated: Date())
        let comment4 = CommentModel(commentID: "", userID: "", username: "Marry", content: "This is the fourth comment", dateCreated: Date())
        
        comments.append(comment1)
        comments.append(comment2)
        comments.append(comment3)
        comments.append(comment4)
    }
}

#Preview {
    NavigationView {
        CommentsView()
    }
}
