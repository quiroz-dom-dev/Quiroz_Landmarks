//
//  Quiroz_LandmarkDetails.swift
//  Quiroz_Landmarks
//
//  Created by Domingo Quiroz on 5/6/25.
//

import SwiftUI


struct Quiroz_LandmarkDetail: View {
    var landmark: Quiroz_Landmark
    
    var body: some View {
        VStack {
            Quiroz_MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            Quiroz_CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    Quiroz_LandmarkDetail(landmark: landmarks[0])
}
