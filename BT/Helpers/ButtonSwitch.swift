//
//  ButtonSwitch.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct ButtonSwitch: View {
    
    @State var isPressed = false
    
    var body: some View {
        Button(action: {
            isPressed.toggle()
        }, label: {
            HStack(spacing: 0){
                Text("kg/cm")
                    .padding(.horizontal)
                    .padding(.vertical, 6)
                    .foregroundColor(isPressed ? .white : .orange)
                    .background(isPressed ? .orange : .white)
                
                Text("lbs/inch")
                    .padding(.horizontal)
                    .padding(.vertical, 6)
                    .foregroundColor(isPressed ? .orange : .white)
                    .background(isPressed ? .white : .orange)
            }
            .font(.system(size: 14))
            .fontWeight(.semibold)
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.orange, lineWidth: 1)
            )
        })
    }
}

struct ButtonSwitch_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwitch()
    }
}
