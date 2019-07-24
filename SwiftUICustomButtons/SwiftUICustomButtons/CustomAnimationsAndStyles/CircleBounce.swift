//
//  CircleBounce.swift
//  SwiftUICustomButtons
//
//  Created by Mansur Ahmed on 2019-07-23.
//  Copyright © 2019 Mansur Ahmed. All rights reserved.
//

import SwiftUI

struct CircleBounce : View {
    @State private var isTapped = false
    
    var animation: Animation {
        Animation.fluidSpring(dampingFraction: 0.4)
            .speed(2)
    }
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isTapped.toggle()
            }
        }) {
            Text(isTapped ? "Goodbye World" : "Hello World")
                .bold()
                .font(Font.system(.largeTitle, design: .monospaced))
        }.buttonStyle(.goodbyeWorld)
            .frame(minWidth: 0, maxWidth: isTapped ? 370 : 280, minHeight: 0, maxHeight: 500, alignment: .center)
            .background(Color.black)
        .mask(Circle())
        .animation(animation)
    }
}

#if DEBUG
struct CircleBounce_Previews : PreviewProvider {
    static var previews: some View {
        CircleBounce()
    }
}
#endif
