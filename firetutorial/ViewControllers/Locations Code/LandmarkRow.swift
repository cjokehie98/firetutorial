//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Charles Okehie on 5/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark:Landmark
//    :Landmark gives landmark a type that is declared in Landmark.swift as a struct which referes to the json data. How does this differ from class?
    
    var body: some View {
        
        HStack{
            
            landmark.image.resizable().frame(width: 50, height: 50, alignment: .center)
            
            Text(landmark.name)
            Spacer()
        }.padding(.leading, 10)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
    }.previewLayout(.fixed(width: 300, height: 70))
    }
}
