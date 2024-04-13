//
//  UploadView.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 11/4/24.
//

import SwiftUI
import UIKit

struct UploadView: View {
    @State var isPresented = false
    @State var imageSelected = UIImage(named: "logo")!
    @State var sourceType: UIImagePickerController.SourceType = .camera
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Button(action: {
                    sourceType = .camera
                    isPresented.toggle()
                }, label: {
                    Text("Take Photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.yellowColor)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.MyTheme.purpleColor)
                
                Button(action: {
                    sourceType = .photoLibrary
                    isPresented.toggle()
                }, label: {
                    Text("Import Photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.purpleColor)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.MyTheme.yellowColor)
            }
            .sheet(isPresented: $isPresented, content: {
                ImagePicker(imageSelected: $imageSelected, sourceType: $sourceType)
            })
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(radius: 12)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    UploadView()
}
