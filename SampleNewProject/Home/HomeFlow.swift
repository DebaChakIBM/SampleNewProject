//
//  RoutCoordinator.swift
//  Coordinator
//
//  Created by Debanjan Chakraborty on 11/06/24.
//
import SwiftUI
import Combine

final class HomeFlow {
    let sceneFactory: HomeSceneFactoryProtocol
    init(sceneFactory: HomeSceneFactoryProtocol) {
        self.sceneFactory = sceneFactory
    }

    lazy var sceneViewController: UIViewController = {
        self.sceneFactory.buildScene(viewModel: HomeViewModel(),
                                     actionHandler: { [weak self] path in
            guard let localSelf = self else { return }
            localSelf.tapToRoute(path)
        })
    }()

    var scenePresenter: ScenePresenting? {
        return sceneViewController as? ScenePresenting
    }

    func tapToRoute(_ path: String) {
        switch path.uppercased() {
            case "SETTINGS":
                visitSettings()
                break
            default: break
        }
    }

    private func visitSettings() {
        let settingsFlow = DefaultFlowFactory.buildSettingsFlow()
        scenePresenter?.push(settingsFlow.sceneViewController)
    }
}

