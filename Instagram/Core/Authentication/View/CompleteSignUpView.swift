//
//  CompleteSignUpView.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/13/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            Text("Welcome to Instagram, k0li4ka")
                .font(.title2.bold())
                .padding(.top)
                .multilineTextAlignment(.center)
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                
            } label: {
                Text("Complete Sign Up")
                    .modifier(ButtonModifier())
            }
            .padding(.vertical)
            
            Spacer()
        }
        .navigationBarBackButtonHidden()
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
