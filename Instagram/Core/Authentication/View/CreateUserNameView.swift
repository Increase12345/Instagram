//
//  CreateUserNameView.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/13/23.
//

import SwiftUI

struct CreateUserNameView: View {
    @EnvironmentObject var vm: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Create username")
                .font(.title2.bold())
                .padding(.top)
            Text("Pick a username for your new account. You can always change it later")
                .font(.footnote)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $vm.username)
                .textInputAutocapitalization(.never)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                CreatePasswordView()
            } label: {
                Text("Next")
                    .modifier(ButtonModifier())
            }
            .padding(.vertical)
            
            Spacer()
        }
    }
}

struct CreateUserNameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserNameView()
    }
}
