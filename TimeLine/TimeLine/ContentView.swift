//
//  ContentView.swift
//  TimeLine
//
//  Created by Anshuman on 20/04/20.
//  Copyright © 2020 Anshuman Singh. All rights reserved.
//

import SwiftUI
import Endpoints

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .onAppear() {
                self.run()
        }
    }
    
    private func run() {
        AwesomeAPIClient.shared.testRun {
            print("API succeeded.....")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
