//
//  ContentView.swift
//  ARCounter
//
//  Created by Andronick Martusheff on 6/25/22.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    
    var count = Count()
    
    var body: some View {
        ZStack() {
            ARViewContainer(count: count)
            VStack {
                Spacer()
                CounterButtonBarView(count: count)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
