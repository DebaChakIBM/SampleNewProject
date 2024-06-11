//
//  DefaultFlowFactory.swift
//  SampleNewProject
//
//  Created by Debanjan Chakraborty on 11/06/24.
//

import Foundation

struct DefaultFlowFactory {

    static func buildHomeFlow(sceneFactory: HomeSceneFactoryProtocol = DefaultHomeSceneFactory()) -> HomeFlow {
        HomeFlow(sceneFactory: sceneFactory)
    }

    static func buildSettingsFlow(sceneFactory: SettingsSceneFactoryProtocol = DefaultSettingsSceneFactory()) -> SettingsFlow {
        SettingsFlow(sceneFactory: sceneFactory)
    }
}
