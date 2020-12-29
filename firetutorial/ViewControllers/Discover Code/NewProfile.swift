//
//  NewProfile.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/21/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct NewProfile: View {
    var body: some View {
        VStack {
            Spacer()
            Image("IMG_9714").resizable().frame(width: 300, height: 400, alignment: .center)
            Spacer()
            Text("Your all new profile is where you can explore new brands and acquire new badges").font(.system( size: 17, weight: .semibold)).multilineTextAlignment(.center)
            Spacer()
        }
    }
}

struct NewProfile_Previews: PreviewProvider {
    static var previews: some View {
        NewProfile()
    }
}
