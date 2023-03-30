//
//  SyncBetterTogetherView.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct SyncBetterTogetherView: View {
    var body: some View {
        VStack {
            
            TitleWithDividers(title: "Sync BetterTogether with")
            
            ToggleBoxes(title: "Apple Health", caption: "Steps, Floors, Glasses", image: "applehealth", isOn: true)
                .padding(.bottom)
            
            ToggleBoxes(title: "Fitbit", caption: "Steps, Floors, Glasses", image: "fitbit")
            
            HStack{
                Text("*")
                Text("Sync Info")
            }
            .font(.system(size: 14))
            .opacity(0.8)
            .padding(.vertical)
        }
    }
}

struct SyncBetterTogetherView_Previews: PreviewProvider {
    static var previews: some View {
        SyncBetterTogetherView()
    }
}
