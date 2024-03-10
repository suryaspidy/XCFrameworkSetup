//
//  ContentView.swift
//  DemoApp
//
//  Created by surya-15302 on 10/03/24.
//

import SwiftUI
//import DepsSDK
import MainSDK

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear(perform: {
//            DepsSDKInitiate().availabilityCheck()
            MainSDKInitiate().availabilityCheck()
            MainSDKInitiate().depsAvailabilityCheck()
        })
    }
}

#Preview {
    ContentView()
}
