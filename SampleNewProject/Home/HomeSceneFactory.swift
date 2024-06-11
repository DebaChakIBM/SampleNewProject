//
//  HomeSceneFactory.swift
//  Coordinator
//
//  Created by Debanjan Chakraborty on 11/06/24.
//

import UIKit
import Foundation

protocol HomeSceneFactoryProtocol {
    func buildScene(viewModel: HomeViewModelProtocol, actionHandler: @escaping((String) -> Void)) -> UIViewController
}

struct DefaultHomeSceneFactory: HomeSceneFactoryProtocol {
    func buildScene(viewModel: HomeViewModelProtocol, 
                    actionHandler: @escaping((String) -> Void)) -> UIViewController {
        let view = HomeView(viewModel: viewModel, tapAction: actionHandler)
        return ScenePresenterViewController(rootView: view)
    }
}
