//
//  ContentView.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                AppBarView()
                
                Divider()
                
                ScrollView{
                    ProfileView()
                    
                    AdditionalInfoView()
                    .padding(.bottom, 28)
                    
                    SyncBetterTogetherView()
                    
                    PopupSettingsView()
                    
                    Button(action: {
                        //save info
                    }, label: {
                        Text("Save")
                            .padding()
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    })
                    .frame(maxWidth: .infinity)
                    .background(.orange)
                    .cornerRadius(12)
                    .padding(.top, 38)
                }.scrollIndicators(.hidden)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
