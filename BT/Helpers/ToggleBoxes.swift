//
//  ToggleBoxes.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct ToggleBoxes: View {
    
    @State var title: LocalizedStringKey
    @State var caption: LocalizedStringKey
    @State var image: String
    
    @State var isOn = false
    
    var body: some View {
        
        HStack{
            Image(image)
                .resizable()
                .frame(width: 38, height: 38)
                .cornerRadius(12)
                .padding(4)
            
            VStack (alignment: .leading){
                Text(title)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                Text(caption)
                    .font(.system(size: 14))
                    .opacity(0.8)
            }
            
            Spacer()
            
            Toggle("", isOn: $isOn)
                .padding()
                .labelsHidden()
        }
        .padding(.vertical, 4)
        .padding(.horizontal)
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
        
    }
}

struct ToggleBoxes_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBoxes(title: "", caption: "", image: "")
    }
}
