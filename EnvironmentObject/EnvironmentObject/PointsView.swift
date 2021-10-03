//
//  PointsView.swift
//  EnvironmentObject
//
//  Created by Javier Calatrava on 3/10/21.
//

import SwiftUI

struct PointsView: View {
    @EnvironmentObject var settings: AppSettings
    @Environment(\.currentPointsValue) var currentPointsEnv
    @Binding var currentPoints: Int
    var body: some View {

        Button("Decrease  @State-@Binding \(currentPoints)") {
            currentPoints -= 1
        }
        
        Button("Decrease @EnvironmentObject \(settings.points)") {
            settings.points -= 1
        }

        Button("Decrease @Environment: \(currentPointsEnv.wrappedValue)") {
            currentPointsEnv.wrappedValue -= 1
        }
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView(currentPoints: .constant(0))
    }
}

