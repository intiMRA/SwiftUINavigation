//
//  View+NavigationFactory.swift
//  Navigation
//
//  Created by ialbuquerque on 1/02/24.
//

import Foundation
import SwiftUI

extension View {
    func primaryNavigator(router: Router) -> some View {
        self
            .navigationDestination(for: PrimaryDestination.self) { destination in
                switch destination {
                case .firstView(let viewModel):
                    FirstView(viewModel: viewModel)
                        .environment(router)
                case .secondView(let viewModel):
                    SecondView(viewModel: viewModel)
                        .environment(router)
                }
            }
    }
    
    func secondaryNavigator(router: Router) -> some View {
        self
            .navigationDestination(for: SecondaryDestination.self) { destination in
                switch destination {
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
