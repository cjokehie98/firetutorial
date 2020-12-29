//
//  MapView.swift
//  Practice SwiftUI
//
//  Created by Charles Okehie on 4/29/20.
//  Copyright © 2020 Charles Okehie. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context:
        UIViewRepresentableContext<MapView>) -> MKMapView {
        
        MKMapView()
        
    }
    
    func updateUIView(_ uiView: MapView.UIViewType, context: UIViewRepresentableContext<MapView>) {
        
//        Put the code to update UI View
        let coordinate = CLLocationCoordinate2D(
                   latitude: 34.011286, longitude: -116.166868)
               let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
               let region = MKCoordinateRegion(center: coordinate, span: span)
               uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
