//
//  TextFields.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct TextFields: View {
    
    @State var textFieldValue: String = ""
    @State var placeholder: LocalizedStringKey
    
    var body: some View {
        TextField(
            placeholder,
          text: $textFieldValue
        )
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
        .padding(.bottom, 14)
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields(placeholder: "")
    }
}
