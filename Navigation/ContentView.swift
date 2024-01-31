//
//  ContentView.swift
//  Navigation
//
//  Created by ialbuquerque on 1/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var router = Router()
    var body: some View {
        NavigationStack(path: $router.stack) {
            VStack {
                Button("Navigate to FristView") {
                    router.navigate(to: PrimaryDestination.firstView(.init(text: "first view from content view")))
                }
                
                Button("Navigate to SecondView") {
                    router.navigate(to: PrimaryDestination.secondView(.init(text: "second view from content view")))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .primaryRouterNavigator(router: router)
        }
    }
}

#Preview {
    ContentView()
}
