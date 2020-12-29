//
//  Tabs.swift
//  firetutorial
//
//  Created by Charles Okehie on 9/28/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI

struct Tabs: View {
    @State var status = true
    var body: some View {
        TabView{
    
//           NewHomeSUI()
            
            NewHomeSUI().tabItem { Image(systemName:"house")
                Text("Discover") }
           PopUp().tabItem {
                Image(systemName: "location.fill")
                Text("Pop Up") }
            CheckOut().tabItem {
                Image(systemName: "cart")
                Text("Shop") }
            BusinessProfile().tabItem {
                 Image(systemName: "heart")
                 Text("Favorites")}
            
        }
        
    }
    
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
