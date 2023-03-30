//
//  DropDown.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct DropDown: View {
    
    @State var options: [String]
    @State var locationIndex = 0
    
    @State var optionValue: String = ""
    
    @State var placeholder: LocalizedStringKey = "Select"
    
    var body: some View {
        
        Menu{
            ForEach(options, id: \.self) {
                option in
                Button(LocalizedStringKey(option)) {
                    self.optionValue = option
                }
            }
        }label: {
            VStack(spacing: 5){
                HStack(alignment: .center) {
                    Text(optionValue.isEmpty ? placeholder : LocalizedStringKey(optionValue))
                        .foregroundColor(optionValue == "" ? .gray : .black)
                        .frame(height: 50)
                        .padding(.horizontal)
                    Spacer()
                    Image(systemName: "chevron.down").padding(.trailing)
                        .foregroundColor(.gray)
                }.overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
            }
        }.padding(.bottom, 24)
        
//        Picker("Select Location: ", selection: $locationIndex){
//          ForEach(0..<options.count) { index in
//            Text(options[index])
//          }
//        }
//        .padding(.vertical, 6)
//        .frame(maxWidth: .infinity, alignment: .leading)
//        .foregroundColor(.black)
        
        

    }
}

struct DropDown_Previews: PreviewProvider {
    static var previews: some View {
        DropDown(options: ["Male", "Female", "Prefer not to say"])
    }
}
