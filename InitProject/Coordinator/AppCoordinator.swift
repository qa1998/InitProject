//
//  AppCoordinator.swift
//  InitProject
//
//  Created by QuangAnh on 26/12/25.
//
import UIKit

struct AppCoordinatorMeta: CoordinationMeta {
    
}

class AppCoordinator: NavigationCoordinator<AppCoordinatorMeta> {
    private var window: UIWindow?
    
    override func start(with meta: AppCoordinatorMeta) {
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
