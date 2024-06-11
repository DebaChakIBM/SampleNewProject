//
//  SettingsSceneFactory.swift
//  SampleNewProject
//
//  Created by Debanjan Chakraborty on 11/06/24.
//

import UIKit
import Foundation

protocol SettingsSceneFactoryProtocol {
    func buildScene() -> UIViewController
}

struct DefaultSettingsSceneFactory: SettingsSceneFactoryProtocol {
    func buildScene() -> UIViewController {
        ScenePresenterViewController(rootView: SettingsView())
    }
}
