//
//  PopupSettingsView.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct PopupSettingsView: View {
    var body: some View {
        VStack {
            
            TitleWithDividers(title: "Popup Settings")
            
            ToggleBoxes(title: "Daily Tips", caption: "Wellness daily tips pop-ups", image: "lotus", isOn: true)
        }
    }
}

struct PopupSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        PopupSettingsView()
    }
}
