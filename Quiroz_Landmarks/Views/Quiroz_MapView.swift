//
//  Quiroz_MapView.swift
//  Quiroz_Landmarks
//
//  Created by Domingo Quiroz on 5/6/25.
//

import SwiftUI
import MapKit

struct Quiroz_MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    Quiroz_MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
