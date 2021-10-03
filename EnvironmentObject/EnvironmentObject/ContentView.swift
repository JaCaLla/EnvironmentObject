//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by Javier Calatrava on 3/10/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var settings = AppSettings()

    var body: some View {
        NavigationView {
            VStack {
                // A button that writes to the environment settings
                Button("Increase Points") {
                    settings.points += 1
                }

                NavigationLink(destination: IntermediateView()) {
                    Text("Show Detail View")
                }
                
                Text("Points: \(settings.points)")
            }
            .frame(height: 200)
        }
        .environmentObject(settings)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
