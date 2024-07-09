//
//  ContentView.swift
//  SampleFrameworkFromCore
//
//  Created by Volodymyr Chekyrta on 9.07.24.
//

import SwiftUI
import MyFrameworkFromCore

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            print("Test MyFrameworkFromCore")
            let impl = MyFrameworkImlementation()
            impl.function1()
            impl.function2()
        }
    }
}

#Preview {
    ContentView()
}
