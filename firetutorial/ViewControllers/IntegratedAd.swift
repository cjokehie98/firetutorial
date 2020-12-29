//
//  IntegratedAd.swift
//  firetutorial
//
//  Created by Charles Okehie on 11/16/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct IntegratedAd: View {
    var body: some View {
        // 8
        GeometryReader { geometry in
            AdCarousel(numberOfImages: 3) {
                Image("sunrise")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: 100)
                    .clipped()
                Image("suntree")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: 100)
                    .clipped()
                Image("mountains")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: 100)
                    .clipped()
            }
        }
}

struct IntegratedAd_Previews: PreviewProvider {
    static var previews: some View {
        IntegratedAd()
    }
}
}
