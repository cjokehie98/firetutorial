//
//  Reviews.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/28/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct Reviews: View {
    @State private var showreviews = true
    var body: some View {
        VStack {
            Text("Community Board").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Toggle(isOn: $showreviews, label: {
                Text("Toggle")
            })
            
            if showreviews{
                Text("Comments")}
            else {Text("Starred Reviews")}
            Spacer()
            ReviewButton()
        }
        
    }
}


struct Reviews_Previews: PreviewProvider {
    static var previews: some View {
        Reviews()
    }
}
