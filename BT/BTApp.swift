//
//  BTApp.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

@main
struct BTApp: App {
    
    @ObservedObject var language = Language()
    
    var body: some Scene {
        WindowGroup {
            if language.currentLanguage != "" {
                ContentView()
                    .environmentObject(language)
                    .environment(\.locale, .init(identifier: language.currentLanguage))
                    .environment(\.layoutDirection, language.currentLanguage == "ar" ? .rightToLeft : .leftToRight)
            }
            else{
                ContentView()
                    .environmentObject(language)
            }
        }
    }
}
