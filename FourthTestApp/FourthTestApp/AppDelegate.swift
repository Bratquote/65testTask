//
//  AppDelegate.swift
//  FourthTestApp
//
//  Created by Timur Karimov on 18.09.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        openViewController()
        return true
    }
    
    func openViewController() {
        let vc = MainAssembler().assemble()
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController.init(rootViewController: vc)
        self.window?.makeKeyAndVisible()
    }


}

