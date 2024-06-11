//
//  HomeView.swift
//  Coordinator
//
//  Created by Debanjan Chakraborty on 2024-05-02.
//
import SwiftUI
import Combine

struct HomeView: View {
    private let viewModel: HomeViewModelProtocol
    private let buttonTapAction: (String) -> Void
    init(viewModel: HomeViewModelProtocol, tapAction: @escaping((String) -> Void)) {
        self.viewModel = viewModel
        self.buttonTapAction = tapAction
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.menuItems, id: \.self) { item in
                    Button(action: {
                        buttonTapAction(item)
                    }) {
                        Text(item)
                    }
                }
            }
            .navigationBarTitle("MVVMC DEMO")
        }
    }
}
