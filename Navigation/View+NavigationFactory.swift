//
//  View+NavigationFactory.swift
//  Navigation
//
//  Created by ialbuquerque on 1/02/24.
//

import Foundation
import SwiftUI

extension View {
    func navigator(router: Router) -> some View {
        self
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .firstView(let viewModel):
                    FirstView(viewModel: viewModel)
                        .environment(router)
                case .secondView(let viewModel):
                    SecondView(viewModel: viewModel)
                        .environment(router)
                case .thirdView(let viewModel):
                    ThirdView(viewModel: viewModel)
                        .environment(router)
                case .forthView(let viewModel):
                    ForthView(viewModel: viewModel)
                        .environment(router)
                }
            }
    }
}
