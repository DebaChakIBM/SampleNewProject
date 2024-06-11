//
//  SampleNewProjectTests.swift
//  SampleNewProjectTests
//
//  Created by Debanjan Chakraborty on 11/06/24.
//

import XCTest
@testable import SampleNewProject

final class DefaultSettingsSceneFactoryTests: XCTestCase {
    func test_BuildScene_ReturnsScenePresenterViewController() {
        // Arrange
        let factory = DefaultSettingsSceneFactory()

        // Act
        let scene = factory.buildScene()

        // Assert
        XCTAssertTrue(scene is ScenePresenterViewController)
    }

    func test_BuildScene_RootViewIsSettingsView() {
        // Arrange
        let factory = DefaultSettingsSceneFactory()

        // Act
        let scene = factory.buildScene() as? ScenePresenterViewController

        // Assert
        XCTAssertNotNil(scene)
        XCTAssertTrue(scene?.rootView is SettingsView)
    }

    func test_BuildScene_RootViewIsNotNil() {
        // Arrange
        let factory = DefaultSettingsSceneFactory()

        // Act
        let scene = factory.buildScene() as? ScenePresenterViewController

        // Assert
        XCTAssertNotNil(scene)
        XCTAssertNotNil(scene?.rootView)
    }
}
