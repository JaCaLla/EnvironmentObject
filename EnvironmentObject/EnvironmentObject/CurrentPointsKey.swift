//
//  CurrentPoints.swift
//  EnvironmentObject
//
//  Created by Javier Calatrava on 3/10/21.
//

import Foundation
import SwiftUI

struct CurrentPointsKey: EnvironmentKey {
    static var defaultValue: Binding<Int> = .constant(0)
}

extension EnvironmentValues {
    var currentPointsValue: Binding<Int> {
        get { self[CurrentPointsKey.self] }
        set { self[CurrentPointsKey.self] = newValue }
    }
}
