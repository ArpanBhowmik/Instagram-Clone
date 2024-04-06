//
//  FeedView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 6/4/24.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var postArrayObject: PostArrayObject
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(postArrayObject.dataArray) { post in
                    PostView(postModel: post)
                }
            }

        }
        .navigationTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        FeedView(postArrayObject: PostArrayObject())
    }
}
