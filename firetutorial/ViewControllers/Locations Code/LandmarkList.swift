
//  LandmarkList.swift
//  Landmarks
//
//  Created by Charles Okehie on 5/9/20.
//  Copyright © 2020 Apple. All rights reserved.


import SwiftUI

struct LandmarkList: View {

    @State private var searchText : String = ""

    var body: some View {

        NavigationView{

            VStack{
            List(landmarkData, id: \.id) { landmark in

                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {

                       LandmarkRow(landmark: landmark)
//                    Whats being clicked^, post click ^^

                }

                 }.navigationBarTitle(Text("Landmarks"))

            }

        }
    }


struct LandmarkList_Previews:
PreviewProvider {
    static var previews: some
        View {
        LandmarkList()


    }
}
}
