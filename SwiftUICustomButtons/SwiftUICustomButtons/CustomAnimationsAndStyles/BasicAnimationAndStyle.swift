//
//  BasicAnimationAndStyle.swift
//  SwiftUICustomButtons
//
//  Created by Mansur Ahmed on 2019-07-23.
//  Copyright © 2019 Mansur Ahmed. All rights reserved.
//

import SwiftUI

struct BasicAnimationAndStyle : View {
    @State private var isTapped = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isTapped.toggle()
            }
        }) {
            Text(isTapped ? "Goodbye World" : "Hello World")
                .bold()
                .font(Font.system(.largeTitle, design: .monospaced))
        }
        .accentColor(isTapped ? .white : .black)
        .padding()
        .background(isTapped ? Color.black : Color.white)
            .cornerRadius(20)
        .border(Color.black, width: 1, cornerRadius: 20)
    }
}

#if DEBUG
struct BasicAnimationAndStyle_Previews : PreviewProvider {
    static var previews: some View {
        BasicAnimationAndStyle()
    }
}
#endif
