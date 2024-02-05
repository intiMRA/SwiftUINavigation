//
//  Router.swift
//  Navigation
//
//  Created by ialbuquerque on 1/02/24.
//

import Foundation
import SwiftUI

enum SecondaryDestination: NavigationDestination {
    case thirdView(ThirdViewModel)
    case forthView(ForthViewModel)
}

enum PrimaryDestination: NavigationDestination {
    case firstView(FirstViewModel)
    case secondView(SecondViewModel)
}

protocol NavigationDestination: Equatable, Hashable { }

@Observable class Router {
   
    var stack = NavigationPath()
    
    func navigate(to destination: any NavigationDestination) {
        stack.append(destination)
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func popToRoot() {
        stack.removeLast(stack.count)
    }
}
