//
//  AdCarousel.swift
//  firetutorial
//
//  Created by Charles Okehie on 11/11/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//


import SwiftUI
import Combine

// 2
struct AdCarousel<Content: View>: View {
    // 3
    private var numberOfImages: Int
    private var content: Content

    // 4
    @State private var currentIndex: Int = 0
    
    // 5
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    // 6
    init(numberOfImages: Int, @ViewBuilder content: () -> Content) {
        self.numberOfImages = numberOfImages
        self.content = content()
    }

    var body: some View {
            // 1
            GeometryReader { geometry in
                // 2
                HStack(spacing: 0) {
                    // 3
                    self.content
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading) // 4
                .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0) // 5
                .animation(.spring()) // 6
                .onReceive(self.timer) { _ in
                    // 7
                    self.currentIndex = (self.currentIndex + 1) % 3
                }
            }
        }
    }


struct AdCarousel_Previews: PreviewProvider {
    static var previews: some View {
        
        // 8
        GeometryReader { geometry in
            AdCarousel(numberOfImages: 3) {
                Image("sunrise")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: 50)
                    .clipped()
                Image("suntree")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: 100)
                    .clipped()
                Image("mountains")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: 200)
                    .clipped()
            }
        }.frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
    }
}
