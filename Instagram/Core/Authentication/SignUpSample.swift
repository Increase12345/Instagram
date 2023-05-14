//
//  SignUpSample.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/13/23.
//

import SwiftUI

struct SignUpSample: View {
    @Binding var email: String
    
    var title: String
    var description: String
    var textFieldTitle: String
    var buttonTitle: String
    
    var body: some View {
        VStack(spacing: 12) {
            Text(title)
                .font(.title2.bold())
                .padding(.top)
            Text(description)
                .font(.footnote)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField(textFieldTitle, text: $email)
                .textInputAutocapitalization(.never)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                CreateUserNameView()
            } label: {
                Text(buttonTitle)
                    .modifier(ButtonModifier())
            }
            .padding(.vertical)
            
            Spacer()
        }
    }
}

struct SignUpSample_Previews: PreviewProvider {
    static var previews: some View {
        SignUpSample(email: .constant(""), title: "", description: "", textFieldTitle: "", buttonTitle: "")
    }
}
