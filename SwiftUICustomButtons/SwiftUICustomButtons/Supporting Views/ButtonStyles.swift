//
//  ButtonStyles.swift
//  SwiftUICustomButtons
//
//  Created by Mansur Ahmed on 2019-07-23.
//  Copyright © 2019 Mansur Ahmed. All rights reserved.
//

//  Bemplates for the two buttonStyles I created to make them easily reusable.

import SwiftUI

extension StaticMember where Base: ButtonStyle {
    static var helloWorld: StaticMember<helloWorldButton> {
        .init(helloWorldButton())
    }
    
    static var goodbyeWorld: StaticMember<goodbyeWorldButton> {
        .init(goodbyeWorldButton())
    }
}

struct helloWorldButton: ButtonStyle {
    func body(configuration: Button<Self.Label>, isPressed: Bool) -> some View {
        configuration
            .accentColor(.black)
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .border(Color.black, width: 1, cornerRadius: 20)
    }
}

struct goodbyeWorldButton: ButtonStyle {
    func body(configuration: Button<Self.Label>, isPressed: Bool) -> some View {
        configuration
            .accentColor(.white)
            .padding()
            .background(Color.black)
            .cornerRadius(20)
            .border(Color.black, width: 1, cornerRadius: 20)
    }
}
