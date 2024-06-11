//
//  AppDelegate.swift
//  SampleNewProject
//
//  Created by Debanjan Chakraborty on 11/06/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private var appFlow: HomeFlow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.appFlow = DefaultFlowFactory.buildHomeFlow()

        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UINavigationController(rootViewController: self.appFlow?.sceneViewController ?? UIViewController())
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}

