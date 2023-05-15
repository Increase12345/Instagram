//
//  CreatePasswordView.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/13/23.
//

import SwiftUI

struct CreatePasswordView: View {
    @EnvironmentObject var vm: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Create a password")
                .font(.title2.bold())
                .padding(.top)
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $vm.password)
                .textInputAutocapitalization(.never)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                CompleteSignUpView()
            } label: {
                Text("Next")
                    .modifier(ButtonModifier())
            }
            .padding(.vertical)
            
            Spacer()
        }
    }
}

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
