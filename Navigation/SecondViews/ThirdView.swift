//
//  ThirdView.swift
//  Navigation
//
//  Created by ialbuquerque on 1/02/24.
//

import Foundation
import SwiftUI

struct ThirdView: View {
    @Environment(Router.self) var router
    @State var viewModel: ThirdViewModel
    var body: some View {
        VStack {
            Text(viewModel.text)
                .bold()
            
            Button("Navigate to ForthView") {
                router.navigate(to: SecondaryDestination.forthView(.init(text: "second view from third view")))
            }
            Button("Go to Root") {
                router.popToRoot()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.yellow)
    }
}

@Observable class ThirdViewModel: Equatable, Hashable {
    static func == (lhs: ThirdViewModel, rhs: ThirdViewModel) -> Bool {
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

