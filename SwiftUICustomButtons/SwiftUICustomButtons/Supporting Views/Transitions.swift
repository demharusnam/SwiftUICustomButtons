//
//  Transitions.swift
//  SwiftUICustomButtons
//
//  Created by Mansur Ahmed on 2019-07-23.
//  Copyright © 2019 Mansur Ahmed. All rights reserved.
//

// Custom transitions

import SwiftUI

extension AnyTransition {
    static var pushOutFromLeft: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
        let removal = AnyTransition.move(edge: .trailing)
            .combined(with: .slide)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
