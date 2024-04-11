//
//  FeedView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 6/4/24.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var postArrayObject: PostArrayObject
    var title: String
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(postArrayObject.dataArray) { post in
                    PostView(postModel: post, shouldShowHeaderAndFooter: true)
                }
            }

        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        FeedView(postArrayObject: PostArrayObject(), title: "FEED VIEW")
    }
}
