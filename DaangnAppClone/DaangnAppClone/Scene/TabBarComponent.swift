//
//  TabBarComponent.swift
//  DaangnAppClone
//
//  Created by Ellen J on 8/23/24.
//

import UIKit

enum TabBarComponent: CaseIterable {
    case home
    case villageLife
    case nearMe
    case chat
    case myDaangn

    var title: String {
        switch self {
        case .home:
            "홈"
        case .villageLife:
            "동네생활"
        case .nearMe:
            "내 근처"
        case .chat:
            "채팅"
        case .myDaangn:
            "나의 당근"
        }
    }

    var normalIcon: UIImage? {
        switch self {
        case .home:
            UIImage(systemName: "house")
        case .villageLife:
            UIImage(systemName: "building.2")
        case .nearMe:
            UIImage(systemName: "mappin.circle")
        case .chat:
            UIImage(systemName: "bubble.left.and.bubble.right")
        case .myDaangn:
            UIImage(systemName: "person")
        }
    }

    var selectedIcon: UIImage? {
        switch self {
        case .home:
            UIImage(systemName: "house.fill")
        case .villageLife:
            UIImage(systemName: "building.2.fill")
        case .nearMe:
            UIImage(systemName: "mappin.circle.fill")
        case .chat:
            UIImage(systemName: "bubble.left.and.bubble.right.fill")
        case .myDaangn:
            UIImage(systemName: "person.fill")
        }
    }

    var viewController: UIViewController {
        switch self {
        case .home:
            UIViewController()
        case .villageLife:
            UIViewController()
        case .nearMe:
            UIViewController()
        case .chat:
            UIViewController()
        case .myDaangn:
            UIViewController()
        }
    }
}
