//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by Javier Calatrava on 3/10/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var settings = AppSettings()
    @State private var currentPoints: Int = 0
    @State private var currentPointsEnv: Int = 0
    var body: some View {
        NavigationView {
            VStack {
                // A button that writes to the environment settings
                Button("Points @State-@Binding: \(currentPoints)") {
                    currentPoints += 1
                }
                Button("Points @EnvironmentObject: \(settings.points)") {
                    settings.points += 1
                }
                Button("Points @Environment: \(currentPointsEnv)") {
                    currentPointsEnv += 1
                }

                NavigationLink(destination: IntermediateView(currentPoints: $currentPoints)) {
                    Text("Show Detail View")
                }
            }
            .frame(height: 200)
        }
        .environmentObject(settings)
        .environment(\.currentPointsValue, $currentPointsEnv)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
