//
//  CarouselView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 10/4/24.
//

import SwiftUI

struct CarouselView: View {
    @State var selection: Int = 0
    @State var timerAdded: Bool = false
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(1..<8) { count in
                Image("dog\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count - 1)
            }
        }
        .tabViewStyle(.page)
        .frame(height: 300)
        .animation(.default)
        .onAppear {
            if !timerAdded { addTimer() }
        }
    }
    
    func addTimer() {
        timerAdded = true
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            selection = (selection + 1) % 8
        }
        timer.fire()
    }
}

#Preview {
    CarouselView()
        .previewLayout(.sizeThatFits)
}
