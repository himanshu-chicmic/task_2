//
//  TitleWithDividers.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct TitleWithDividers: View {
    
    @State var title: LocalizedStringKey
    
    var body: some View {
        HStack{
            
            VStack{
                Divider()
            }
            
            Text(title)
                .font(.system(size: 15))
                .layoutPriority(1)
            
            VStack{
                Divider()
            }
           
        }
        .padding(.bottom, 24)
    }
}

struct TitleWithDividers_Previews: PreviewProvider {
    static var previews: some View {
        TitleWithDividers(title: "")
    }
}
