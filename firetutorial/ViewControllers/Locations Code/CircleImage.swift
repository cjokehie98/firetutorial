//
//  CircleImage.swift
//  Practice SwiftUI
//
//  Created by Charles Okehie on 4/29/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
        
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
