//
//  ContentView.swift
//  NavigationInSwiftUI
//
//  Created by ramil on 02/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    let message: String

    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
        }
    }
}

struct ContentView: View {
    
    private let messages = [
        "Hello", "How are you?"
    ]

    
    var body: some View {
        NavigationView {
            List(messages, id: \.self) { message in
                NavigationLink(destination: DetailsView(message: message)) {
                    Text(message)
                }
            }.navigationBarTitle("Messages")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
