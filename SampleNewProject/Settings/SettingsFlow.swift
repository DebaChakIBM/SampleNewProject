//
//  SettingsFlow.swift
//  SampleNewProject
//
//  Created by Debanjan Chakraborty on 11/06/24.
//

import SwiftUI
import Combine

final class SettingsFlow {
    let sceneFactory: SettingsSceneFactoryProtocol
    init(sceneFactory: SettingsSceneFactoryProtocol) {
        self.sceneFactory = sceneFactory
    }

    lazy var sceneViewController: UIViewController = {
        self.sceneFactory.buildScene()
    }()
}

