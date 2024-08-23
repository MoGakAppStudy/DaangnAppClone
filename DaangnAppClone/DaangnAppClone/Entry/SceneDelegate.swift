//
//  SceneDelegate.swift
//  DaangnAppClone
//
//  Created by Ellen J on 8/21/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(
            rootViewController: TabBarViewController()
        )
        window?.makeKeyAndVisible()
        window?.overrideUserInterfaceStyle = .light
    }
}

