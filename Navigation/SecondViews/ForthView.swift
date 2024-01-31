//
//  ForthView.swift
//  Navigation
//
//  Created by ialbuquerque on 1/02/24.
//

import Foundation
import SwiftUI

struct ForthView: View {
    @Environment(Router.self) var router
    @State var viewModel: ForthViewModel
    var body: some View {
        VStack {
            Text(viewModel.text)
                .bold()
            
            Button("Navigate to ThirdView") {
                router.navigate(to: SecondaryDestination.thirdView(.init(text: "second view from forth view")))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.purple)
    }
}

@Observable class ForthViewModel: Equatable, Hashable {
    static func == (lhs: ForthViewModel, rhs: ForthViewModel) -> Bool {
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

