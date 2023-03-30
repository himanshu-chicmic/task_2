//
//  Mesurementsview.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct AdditionalInfoView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var isOn = false
    
    let gender: [String] = ["Male", "Female", "Prefer not to say"]
    let heights: [String] = ["4", "5", "6"]
    
    var body: some View {
        VStack(alignment: .leading){
            
            Group{
                HStack(alignment: .bottom) {
                    Text("Height*")
                        .font(.system(size: 16))
                    
                    Spacer()
                    
                    ButtonSwitch()
                }
                
                DropDown(options: heights)
                
                HStack{
                    Text("*")
                    Text("Height Info")
                }
                .font(.system(size: 14))
                .opacity(0.8)
                .padding(.vertical)
                
                Text("Gender*")
                    .font(.system(size: 16))
                
                DropDown(options: gender)
                
                Button(action: {
                    isOn.toggle()
                }, label: {
                    HStack{
                        Image(systemName: isOn ? "checkmark.square.fill" : "square")
                            .foregroundColor(.orange)
                        
                        Text("Hide my weight from other members")
                            .font(.system(size: 14))
                            .foregroundColor(colorScheme == .light ? .black : .white)
                            .opacity(0.8)
                        
                        Spacer()
                    }
                })
                .padding(.vertical)
               
            }
        }
    }
}

struct AdditionalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalInfoView()
    }
}
