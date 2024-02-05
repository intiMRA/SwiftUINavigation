//
//  FirstView.swift
//  Navigation
//
//  Created by ialbuquerque on 1/02/24.
//

import Foundation
import SwiftUI

struct FirstView: View {
    @Environment(Router.self) var router
    @State var viewModel: FirstViewModel
    var body: some View {
            VStack {
                Text(viewModel.text)
                    .bold()
                
                Button("Navigate to SecondView") {
                    router.navigate(to: PrimaryDestination.secondView(.init(text: "second view from first view")))
                }
                Button("Navigate to Third") {
                    router.navigate(to: SecondaryDestination.thirdView(.init(text: "third view from first view")))
                }
                Button("Navigate to Forth") {
                    router.navigate(to: SecondaryDestination.forthView(.init(text: "forth view from first view")))
                }
                Button("Go to Root") {
                    router.popToRoot()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.pink)
            .secondaryNavigator(router: router)
    }
}

@Observable class FirstViewModel: Equatable, Hashable {
    static func == (lhs: FirstViewModel, rhs: FirstViewModel) -> Bool {
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
