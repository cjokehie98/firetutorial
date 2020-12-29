//
//  GroupOfButtons.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/14/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct GroupOfButtons: View {
    @State private var isActive = false
    var body: some View {
        NavigationView{
            
        
        VStack{
            Spacer()
            HStack{
                Spacer()
                AnimatedButtons()
                Spacer()
                AnimatedButtons()
                Spacer()
                AnimatedButtons()
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                AnimatedButtons()
                Spacer()
                AnimatedButtons()
                Spacer()
                AnimatedButtons()
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                AnimatedButtons()
                Spacer()
                AnimatedButtons()
                Spacer()
                AnimatedButtons()
                Spacer()
            }
          Spacer()
            NavigationLink(destination: LandmarkList(), isActive: $isActive) {
                return Text("Next")
            }
            Spacer()
            
        }
    }
}

struct GroupOfButtons_Previews: PreviewProvider {
    static var previews: some View {
        GroupOfButtons()
    }
}
}
