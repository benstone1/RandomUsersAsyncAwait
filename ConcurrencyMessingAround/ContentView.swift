//
//  ContentView.swift
//  ConcurrencyMessingAround
//
//  Created by Ben Stone on 7/22/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(userData.users) { user in
                        Text(user.fullName)
                    }
                }
            }
            .navigationTitle(Text("Random Users"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
