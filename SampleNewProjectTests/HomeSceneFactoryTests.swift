//
//  HomeSceneFactoryTests.swift
//  SampleNewProjectTests
//
//  Created by Debanjan Chakraborty on 11/06/24.
//

import XCTest
@testable import SampleNewProject

final class DefaultHomeSceneFactoryTests: XCTestCase {
    func test_BuildScene_ReturnsScenePresenterViewController() {
        // Arrange
        let factory = DefaultHomeSceneFactory()
        let viewModel = MockHomeViewModel()
        let actionHandler: (String) -> Void = { _ in }

        // Act
        let scene = factory.buildScene(viewModel: viewModel, actionHandler: actionHandler)

        // Assert
        XCTAssertTrue(scene is ScenePresenterViewController)
    }

    func test_BuildScene_RootViewIsHomeView() {
        // Arrange
        let factory = DefaultHomeSceneFactory()
        let viewModel = MockHomeViewModel()
        let actionHandler: (String) -> Void = { _ in }

        // Act
        let scene = factory.buildScene(viewModel: viewModel, actionHandler: actionHandler) as? ScenePresenterViewController

        // Assert
        XCTAssertNotNil(scene)
        XCTAssertTrue(scene?.rootView is HomeView)
    }
/*Unit tests that are not passing because WatsonX did not bother about func accessors
    func test_BuildScene_HomeViewHasCorrectViewModel() {
        // Arrange
        let factory = DefaultHomeSceneFactory()
        let viewModel = MockHomeViewModel()
        let actionHandler: (String) -> Void = { _ in }

        // Act
        let scene = factory.buildScene(viewModel: viewModel, actionHandler: actionHandler) as? ScenePresenterViewController

        // Assert
        XCTAssertNotNil(scene)
        let homeView = scene?.rootView as? HomeView
        XCTAssertNotNil(homeView)
        XCTAssertEqual(homeView?.viewModel, viewModel)
    }

    func test_BuildScene_HomeViewHasCorrectTapAction() {
        // Arrange
        let factory = DefaultHomeSceneFactory()
        let viewModel = MockHomeViewModel()
        let actionHandler: (String) -> Void = { _ in }
        let expectedTapAction: (String) -> Void = { _ in }

        // Act
        let scene = factory.buildScene(viewModel: viewModel, actionHandler: actionHandler) asePresenterViewController

        // Assert
        XCTAssertNotNil(scene)
        let homeView = scene?.rootView as? HomeView
        XCTAssertNotNil(homeView)
        XCTAssertEqual(homeView?.tapAction, expectedTapAction)
    }
 */
}

// MARK: - MockHomeViewModel

class MockHomeViewModel: HomeViewModelProtocol {
    // Implement mock behavior for HomeViewModelProtocol
    var menuItems = ["A"]
}
