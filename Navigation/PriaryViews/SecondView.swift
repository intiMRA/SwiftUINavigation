//
//  SecondView.swift
//  Navigation
//
//  Created by ialbuquerque on 1/02/24.
//

import Foundation
import SwiftUI

struct SecondView: View {
    @Environment(Router.self) var router
    @State var viewModel: SecondViewModel
    var body: some View {
            VStack {
                Text(viewModel.text)
                    .bold()
                
                Button("Navigate to FristView") {
                    router.navigate(to: PrimaryDestination.firstView(.init(text: "first view from second view")))
                }
                
                Button("Navigate to Third") {
                    router.navigate(to: SecondaryDestination.thirdView(.init(text: "third view from seconf view")))
                }
                Button("Navigate to Forth") {
                    router.navigate(to: SecondaryDestination.forthView(.init(text: "forth view from second view")))
                }
                Button("Go to Root") {
                    router.popToRoot()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
            .secondaryNavigator(router: router)
    }
}

@Observable class SecondViewModel: Equatable, Hashable {
    static func == (lhs: SecondViewModel, rhs: SecondViewModel) -> Bool {
        lhs.text == rhs.text
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(text)
    }
    var text: String
    init(text: String) {
        self.text = text
    }
}
