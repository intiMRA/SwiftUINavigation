//
//  Router.swift
//  Navigation
//
//  Created by ialbuquerque on 1/02/24.
//

import Foundation
import SwiftUI

enum Destination: Hashable {
    case firstView(FirstViewModel)
    case secondView(SecondViewModel)
    case thirdView(ThirdViewModel)
    case forthView(ForthViewModel)
}

protocol NavigationDestination: Equatable, Hashable { }

@Observable class Router {
   
    var stack = [Destination]()
    
    func navigate(to destination: Destination) {
        stack.append(destination)
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func popToRoot() {
        stack.removeLast(stack.count)
    }
}
