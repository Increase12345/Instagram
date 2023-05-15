//
//  ContentView.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var registrationVM = RegistrationViewModel()
    @StateObject var vm = ContentViewModel()
    
    var body: some View {
        Group {
            if vm.userSession == nil {
                LoginView()
                    .environmentObject(registrationVM)
            } else if let currentUser = vm.currentUser {
                MainTabView(user: currentUser)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
