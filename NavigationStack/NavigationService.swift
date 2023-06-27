//
//  NavigationService.swift
//  NavigationStack
//
//  Created by Simon Gamble on 27/6/2023.
//

import SwiftUI

struct NavigationService {

    static func pushView(content: AnyView) {
        let vc = UIHostingController(rootView: content)
        findRootViewController()?.pushViewController(vc, animated: true)
    }

    static func popView() {
        findRootViewController()?.popViewController(animated: true)
    }

    static func popToRoot() {
        findRootViewController()?.popToRootViewController(animated: true)
    }
    
    static func findRootViewController() -> UINavigationController? {
        return findNavigationController(viewController: UIApplication
            .shared
            .connectedScenes
            .compactMap { ($0 as? UIWindowScene)?.keyWindow }
            .first?.rootViewController)
    }

    static func findNavigationController(viewController: UIViewController?) -> UINavigationController? {
        guard let viewController = viewController else {
            return nil
        }
        if let navigationController = viewController as? UINavigationController {
            return navigationController
        }
        for childViewController in viewController.children {
            return findNavigationController(viewController: childViewController)
        }
        return nil
    }
}
