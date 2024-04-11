//
//  BrowseView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 10/4/24.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            CarouselView()
        }
        .navigationTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        BrowseView()
    }
}
