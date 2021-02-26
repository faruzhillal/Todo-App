//
//  ThemeSettings.swift
//  Todo App
//
//  Created by Faruz Hillal Albany on 22/02/21.
//

import SwiftUI

final public class ThemeSettings: ObservableObject {
    @Published public var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
        didSet {
            UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
        }
    }
    private init() {}
    public static let shared = ThemeSettings()
}
