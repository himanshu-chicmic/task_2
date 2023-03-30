//
//  SelectLanguage.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct SelectLanguage: View {
    
    @State private var selection: String?
    @State var selected: String?
    @EnvironmentObject var language: Language

    @Environment(\.dismiss) var dismiss
    
    @State private var showingOptions = false
    
    var body: some View {
        VStack{
            
            List(language.names, id: \.self, selection: $selection) { name in
                Button(action: {
                    showingOptions.toggle()
                    selected = name
                }, label: {
                    HStack{
                        Text(name)
                        Spacer()
                        if language.codes[name] == language.currentLanguage {
                            Image(systemName: "checkmark")
                                .resizable()
                                .frame(width: 16, height: 12)
                                .foregroundColor(.green)
                        }
                    }
                })
                .foregroundColor(.black)
                .confirmationDialog("Are you sure?", isPresented: $showingOptions) {
                        Button("Yes") {
                            language.setAppLanguage(lang: selected ?? "")
                            dismiss()
                        }

                        Button("No", role: .cancel) {}
                    }

            }
        }
        .navigationTitle("Languages")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SelectLanguage_Previews: PreviewProvider {
    static var previews: some View {
        SelectLanguage()
    }
}
