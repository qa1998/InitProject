//
//  AppDelegate.swift
//  InitProject
//
//  Created by QuangAnh on 20/11/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let navigationController = UINavigationController()
        let meta = AppCoordinatorMeta()
        let appCoordinator = AppCoordinator(navigationController: navigationController)
        appCoordinator.start(with: meta)
        return true
    }
}

