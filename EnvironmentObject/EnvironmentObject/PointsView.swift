//
//  PointsView.swift
//  EnvironmentObject
//
//  Created by Javier Calatrava on 3/10/21.
//

import SwiftUI

struct PointsView: View {
    @EnvironmentObject var settings: AppSettings

    var body: some View {
        Text("Points: \(settings.points)")
        Button("Decrease Points") {
            settings.points -= 1
        }
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
    }
}
