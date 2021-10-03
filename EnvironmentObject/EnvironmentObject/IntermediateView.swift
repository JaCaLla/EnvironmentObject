//
//  IntermediateView.swift
//  EnvironmentObject
//
//  Created by Javier Calatrava on 3/10/21.
//

import SwiftUI

struct IntermediateView: View {
    var body: some View {
        NavigationLink(destination: PointsView()) {
            Text("Show Detail View (again)")
        }
    }
}

struct IntermediateView_Previews: PreviewProvider {
    static var previews: some View {
        IntermediateView()
    }
}
