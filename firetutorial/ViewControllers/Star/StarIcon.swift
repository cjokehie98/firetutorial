//
//  StarIcon.swift
//  firetutorial
//
//  Created by Charles Okehie on 11/24/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct StarIcon: View {
    @State var stars:Int = 0
    var filled: Bool = true
    var body: some View {
        Image(systemName: filled ? "star.fill" : "star").foregroundColor(filled ? Color.yellow : Color.black.opacity(0.6))
    }}

struct StarIcon_Previews: PreviewProvider {
    static var previews: some View {
        StarIcon()
    }
}
