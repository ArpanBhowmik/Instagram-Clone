//
//  CommentsView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 7/4/24.
//

import SwiftUI

struct CommentsView: View {
    @State var submissionText: String = ""
    var body: some View {
        VStack {
            ScrollView {
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
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
    }
}

#Preview {
    NavigationView {
        CommentsView()
    }
}
