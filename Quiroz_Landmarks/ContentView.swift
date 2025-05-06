//
//  ContentView.swift
//  Quiroz_Landmarks
//
//  Created by Domingo Quiroz on 5/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Quiroz_MapView()
                .frame(height: 300)
            
            Quiroz_CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
        
            VStack(alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive Text Goes Here")
            }
        .padding()
        Spacer()
        }
    }
}

#Preview {
    ContentView()
}
