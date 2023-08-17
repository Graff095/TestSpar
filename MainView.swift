//
//  ContentView.swift
//  TestSpar
//
//  Created by Visarg on 17.08.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "location.north.circle")
                    Text("Главная")
                }
            
            Text("Католог")
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                    Text("Католог")
                }
            
            Text("Корзина")
                .tabItem{
                    Image(systemName: "cart")
                    Text("Корзина")
                }
            
            Text("Профиль")
                .tabItem{
                    Image(systemName: "person")
                    Text("Корзина")
                }
        }
        .accentColor(.green)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
