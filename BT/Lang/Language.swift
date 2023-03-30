//
//  Language.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import Foundation

final class Language: ObservableObject{
    
    private let userDefaultKey = "defaultLanguage"
    
    @Published var currentLanguage = ""
    
    init() {
        currentLanguage = UserDefaults.standard.string(forKey: userDefaultKey) ?? ""
    }
    
    let names = [
        "System Default",
        "Arabic",
        "English",
        "Hindi"
    ]
    
    let codes = [
        "System Default" : "",
        "Arabic" : "ar",
        "English" : "en",
        "Hindi" : "hin"
    ]
    
    func setAppLanguage(lang: String) {
        switch lang {
            case "Arabic":
                currentLanguage = "ar"
            case "Hindi":
                currentLanguage = "hin"
            case "English":
                currentLanguage = "en"
            default:
                currentLanguage = ""
        }
        
        UserDefaults.standard.set(currentLanguage, forKey: userDefaultKey)
    }
}
