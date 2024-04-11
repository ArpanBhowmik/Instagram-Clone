//
//  ImageGridView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 11/4/24.
//

import SwiftUI

struct ImageGridView: View {
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        LazyVGrid(
            columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible())
            ],
            alignment: .center,
            spacing: nil,
            pinnedViews: []) {
                ForEach(posts.dataArray, id: \.self) { post in
                    NavigationLink {
                        FeedView(postArrayObject: PostArrayObject(post: post), title: "Post")
                    } label: {
                        PostView(postModel: post, shouldShowHeaderAndFooter: false)
                    }
                }
            }
    }
}

#Preview {
    ImageGridView(posts: PostArrayObject())
}
