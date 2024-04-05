//
//  ContentView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 31/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Screen 1")
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Feed")
                }
            
            Text("Screen 2")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
            
            Text("Screen 3")
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            
            Text("Screen 4")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color.MyTheme.purpleColor)
    }
}

#Preview {
    ContentView()
}