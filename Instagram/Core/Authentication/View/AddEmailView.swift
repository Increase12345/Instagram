//
//  AddEmailView.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/13/23.
//

import SwiftUI

struct AddEmailView: View {
    @EnvironmentObject var vm: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Add your email")
                .font(.title2.bold())
                .padding(.top)
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $vm.email)
                .textInputAutocapitalization(.never)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                CreateUserNameView()
            } label: {
                Text("Next")
                    .modifier(ButtonModifier())
            }
            .padding(.vertical)
            
            Spacer()
        }
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
