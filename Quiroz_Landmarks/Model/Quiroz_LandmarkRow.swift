//
//  Quiroz_LandmarkRow.swift
//  Quiroz_Landmarks
//
//  Created by Domingo Quiroz on 5/6/25.
//

import SwiftUI


struct Quiroz_LandmarkRow: View {
    var landmark: Quiroz_Landmark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)


            Spacer()
        }
    }
}


#Preview {
    Group {
        Quiroz_LandmarkRow(landmark: landmarks[0])
        Quiroz_LandmarkRow(landmark: landmarks[1])
    }
}
