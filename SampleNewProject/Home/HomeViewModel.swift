//
//  HomeViewModel.swift
//  SampleNewProject
//
//  Created by Debanjan Chakraborty on 11/06/24.
//

import Foundation

protocol HomeViewModelProtocol {
    var menuItems: [String] { get }
}
struct HomeViewModel: HomeViewModelProtocol {
    var menuItems = ["Settings"]
}
