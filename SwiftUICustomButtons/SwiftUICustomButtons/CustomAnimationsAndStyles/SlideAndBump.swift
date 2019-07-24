//
//  SlideAndBump.swift
//  SwiftUICustomButtons
//
//  Created by Mansur Ahmed on 2019-07-23.
//  Copyright © 2019 Mansur Ahmed. All rights reserved.
//

import SwiftUI

struct SlideAndBump : View {
    @State private var isTapped = false
    
    var animation: Animation {
        Animation.fluidSpring(dampingFraction: 0.6)
        .speed(2)
    }
    
    var body: some View {
        HStack {
            if isTapped {
                Button(action: {
                    withAnimation {
                        self.isTapped.toggle()
                    }
                }) {
                    Text("Goodbye World")
                        .bold()
                        .font(Font.system(.largeTitle, design: .monospaced))
                }.buttonStyle(.goodbyeWorld)
                .animation(animation)
                .transition(.pushOutFromLeft)
            } else {
                Button(action: {
                    withAnimation {
                        self.isTapped.toggle()
                    }
                }) {
                    Text("Hello World")
                        .bold()
                        .font(Font.system(.largeTitle, design: .monospaced))
                }.buttonStyle(.goodbyeWorld)
                .animation(animation)
                .transition(.pushOutFromLeft)
            }
        }
    }
}

#if DEBUG
struct SlideAndBump_Previews : PreviewProvider {
    static var previews: some View {
        SlideAndBump()
    }
}
#endif
