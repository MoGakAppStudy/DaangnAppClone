//
//  TabBarViewController.swift
//  DaangnAppClone
//
//  Created by Ellen J on 8/21/24.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarComponents()
        view.backgroundColor = .white
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .black
    }

    private func setupTabBarComponents(){
        var viewControllers: [UIViewController] = []

        TabBarComponent.allCases.forEach { component in
            let viewController = component.viewController
            viewController.tabBarItem.image = component.normalIcon
            viewController.tabBarItem.selectedImage = component.selectedIcon
            viewController.tabBarItem.title = component.title
            viewControllers.append(viewController)
        }

        self.viewControllers = viewControllers
    }
}
