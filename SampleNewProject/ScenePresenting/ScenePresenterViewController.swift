//
//  ScenePresenterViewController.swift
//  SampleIBMAI


import UIKit
import SwiftUI

class ScenePresenterViewController: UIHostingController<AnyView> {

    public init(rootView: some View) {
        super.init(rootView: AnyView(rootView))
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        debugPrint("\(#function) is called")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        debugPrint("\(#function) is called")
    }
}

extension ScenePresenterViewController: ScenePresenting {
    func push(_ controller: UIViewController) {
        navigationController?.pushViewController(controller, animated: true)
    }
}
