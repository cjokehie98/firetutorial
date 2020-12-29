//
//  HeartToggleStyle.swift
//  firetutorial
//
//  Created by Charles Okehie on 11/24/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct HeartToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "heart" : "heart.fill")
                .resizable()
                .frame(width: 22, height: 22)
                .onTapGesture { configuration.isOn.toggle() }
        }
    }
}


