//
//  AppBarView.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct AppBarView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack {
            
            Button(action: {
                //go back
            }, label: {
                Image(systemName: "chevron.left")
                    .fontWeight(.semibold)
                    .foregroundColor(colorScheme == .light ? .black : .white)
            })
            
            Spacer()
            
            Text("Account Details")
                .fontWeight(.semibold)
            
            Spacer()
            
            NavigationLink(destination: {
                SelectLanguage()
            }, label: {
                Image(systemName: "globe")
                    .fontWeight(.semibold)
                    .foregroundColor(colorScheme == .light ? .black : .white)
            })
        }
    }
}

struct AppBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppBarView()
    }
}
