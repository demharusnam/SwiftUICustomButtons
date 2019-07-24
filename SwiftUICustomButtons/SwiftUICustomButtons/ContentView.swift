//
//  ContentView.swift
//  SwiftUICustomButtons
//
//  Created by Mansur Ahmed on 2019-07-23.
//  Copyright © 2019 Mansur Ahmed. All rights reserved.
//

//  For the best results, run code on simulator insetad of live preview. As of writing this, live preview is buggy and does not properly display animations.

import SwiftUI

struct ContentView : View {
    var body: some View {
        SlideAndBump()  //Alternate between BasicAnimationAndStyle, SlideAndBump, CircleBounce
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
