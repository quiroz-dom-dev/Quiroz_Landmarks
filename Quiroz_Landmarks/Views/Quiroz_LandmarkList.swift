//
//  Quiroz_LandmarkList.swift
//  Quiroz_Landmarks
//
//  Created by Domingo Quiroz on 5/6/25.
//

import SwiftUI


struct Quiroz_LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List (landmarks) { landmark in
                NavigationLink {
                    Quiroz_LandmarkDetail(landmark: landmark)
                } label: {
                    Quiroz_LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Choose a Landmark")
        }
    }
}


#Preview {
    Quiroz_LandmarkList()
}
