//
//  NavViewRouter.swift
//  Memolation
//
//  Created by saito on 2020/04/04.
//  Copyright © 2020 ys-0-sy. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class NavViewRouter: ObservableObject {
    @Published var currentView = "translation"

}

final class UserData: ObservableObject {
    @Published var text: String = ""
    @Published var translatedText: String = "Enter Text"
}
