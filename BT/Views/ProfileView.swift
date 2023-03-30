//
//  ProfileView.swift
//  BT
//
//  Created by Nitin on 3/29/23.
//

import SwiftUI

struct ProfileView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var dateOfBirth: Date = Date()
    
    var body: some View {
        VStack {
            Button(action: {
                //change profile image
            }, label: {
                ZStack(alignment: .bottomTrailing){
                    
                    Image("user")
                        .resizable()
                        .frame(width: 104, height: 104)
                        .clipShape(Circle())
                    
                    Image(systemName: "camera.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.orange)
                        .padding(2)
                        .background(.white)
                        .clipShape(Circle())
                        .padding(.bottom, 4)
                        .padding(.trailing, 4)
                        
                }
            }).padding()
            
            VStack(alignment: .leading) {
                Group{
                    Text("First Name*")
                    TextFields(placeholder: "Enter first name")
                    
                    Text("Last Name*")
                    TextFields(placeholder: "Enter last name")
                    
                    Text("Date of Birth*")
                    HStack{
                        DatePicker("", selection: $dateOfBirth, displayedComponents: [.date])
                            .labelsHidden()
                        
                        Spacer()
                        
                        Image(systemName: "calendar")
                    }
                    .padding()
                    .padding(.vertical, -8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                    
                    
                    HStack{
                        Image(systemName: "info.circle")
                        Text("Minimum age allowed is 18 years old")
                    }
                    .foregroundColor(.red)
                    .font(.system(size: 14))
                    .padding(.bottom, 34)
                }
                .font(.system(size: 16))
            }
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
