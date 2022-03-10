//
//  UserDefaultApp.swift
//  UserDefault
//
//  Created by Ara Mac Mini on 2022/03/07.
//

import SwiftUI

@main
struct UserDefaultApp: App {
    
    @StateObject var dataViewModel = DataViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(dataViewModel)
          
        }
    }
}
